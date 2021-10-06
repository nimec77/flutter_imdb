import 'package:bloc/bloc.dart';
import 'package:flutter_imdb/movies/domain/entities/movie_title.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_dao.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_iterable.dart';
import 'package:flutter_imdb/movies/presentation/pods/list_info.dart';
import 'package:flutter_imdb/movies/presentation/pods/movies_titles_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'movies_bloc.freezed.dart';

part 'movies_event.dart';

part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc(this.movieTitleDao) : super(const MoviesState.init()) {
    on<MoviesEventListStarted>(_mapStartedListToState);
    on<MoviesEventIterableStarted>(_mapStartedIterableToState);
    on<MoviesEventNextList>(_mapNextListToState, transformer: debounceTime());
    on<MoviesEventPrevList>(_mapPrevListToState, transformer: debounceTime());
  }

  EventTransformer<MoviesEvent> debounceTime<MoviesEvent>() {
    return (events, mapper) => events.debounceTime(const Duration(milliseconds: 300)).flatMap(mapper);
  }

  final requestSize = 100;
  final maxSize = 400;
  final MovieTitleDao movieTitleDao;
  ListInfo _listInfo = const ListInfo(start: 0, end: 0, length: 0, hasReachedEnd: false);
  List<MovieTitle> _list = [];
  MoviesTitlesInfo _moviesTitlesInfo = const MoviesTitlesInfo(startTitleId: '', endTitleId: '');

  Future<void> _mapStartedListToState(MoviesEventListStarted event, Emitter<MoviesState> emit) async {
    emit(const MoviesState.inProgress());
    await _getNext(emit, 'tt0000000', requestSize);
  }

  Future<void> _getNext(Emitter<MoviesState> emit, String titleId, int limit) async {
    final moviesTitlesEither = await movieTitleDao.getMoviesListNext(titleId, limit);
    moviesTitlesEither.fold(
      (error) => emit(MoviesState.failure(error)),
      (moviesTitles) {
        if (moviesTitles.isEmpty) {
          _listInfo = _listInfo.copyWith(
            hasReachedEnd: true,
          );
          emit(MoviesState.listSuccess(moviesTitles: _list, listInfo: _listInfo));
          return;
        }
        if (_moviesTitlesInfo.startTitleId.isEmpty) {
          _moviesTitlesInfo = _moviesTitlesInfo.copyWith(
            startTitleId: moviesTitles.first.titleId,
            endTitleId: moviesTitles.last.titleId,
          );
        }
        final length = moviesTitles.length;
        _list += moviesTitles;
        _listInfo = _listInfo.copyWith(
          end: _listInfo.end + length,
          length: _listInfo.length + length,
          hasReachedEnd: length != requestSize,
        );
        if (_list.length > maxSize) {
          _list = _list.sublist(length);
          _listInfo = _listInfo.copyWith(
            start: _listInfo.start + length,
          );
          _moviesTitlesInfo = _moviesTitlesInfo.copyWith(startTitleId: _list.first.titleId);
        }
        _moviesTitlesInfo = _moviesTitlesInfo.copyWith(endTitleId: _list.last.titleId);
        print(_moviesTitlesInfo);
        print(_listInfo);
        emit(MoviesState.listSuccess(moviesTitles: _list, listInfo: _listInfo));
      },
    );
  }

  Future<void> _mapNextListToState(MoviesEventNextList event, Emitter<MoviesState> emit) async {
    await _getNext(emit, _moviesTitlesInfo.endTitleId, requestSize);
  }

  Future<void> _mapPrevListToState(MoviesEventPrevList event, Emitter<MoviesState> emit) async {
    await _getPrev(emit, _moviesTitlesInfo.startTitleId, requestSize);
  }

  Future<void> _getPrev(Emitter<MoviesState> emit, String titleId, int limit) async {
    if (_listInfo.start == 0) {
      return;
    }
    final moviesTitlesEither = await movieTitleDao.getMoviesListPrev(titleId, limit);
    moviesTitlesEither.fold(
      (error) => emit(MoviesState.failure(error)),
      (moviesTitles) {
        if (moviesTitles.isEmpty) {
          emit(MoviesState.listSuccess(moviesTitles: _list, listInfo: _listInfo));
        }
        final length = moviesTitles.length;
        _list = moviesTitles + _list;
        _listInfo = _listInfo.copyWith(
          start: _listInfo.start - length,
        );
        if (_list.length > maxSize) {
          _list = _list.sublist(0, _list.length - length);
          _listInfo = _listInfo.copyWith(
            end: _listInfo.end - length,
          );
          _moviesTitlesInfo = _moviesTitlesInfo.copyWith(endTitleId: _list.last.titleId);
        }
        _moviesTitlesInfo = _moviesTitlesInfo.copyWith(startTitleId: _list.first.titleId);
        print(_moviesTitlesInfo);
        print(_listInfo);
        emit(MoviesState.listSuccess(moviesTitles: _list, listInfo: _listInfo));
      },
    );
  }

  Future<void> _mapStartedIterableToState(MoviesEventIterableStarted event, Emitter<MoviesState> emit) async {}
}
