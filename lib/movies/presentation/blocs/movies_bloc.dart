import 'package:bloc/bloc.dart';
import 'package:flutter_imdb/app/data/app_database.dart';
import 'package:flutter_imdb/movies/data/daos/movie_title_dao.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'movies_bloc.freezed.dart';

part 'movies_event.dart';

part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc(this.movieTitleDao) : super(const MoviesState.init()) {
    on<MoviesEventListStarted>(_mapStartedListToState);
    on<MoviesEventIterableStarted>(_mapStartedIterableToState);
  }

  final MovieTitleDao movieTitleDao;

  Future<void> _mapStartedListToState(MoviesEventListStarted event, Emitter<MoviesState> emit) async {
    emit(const MoviesState.inProgress());
    final moviesTitlesEither = await movieTitleDao.getMoviesTitles(10);
    moviesTitlesEither.fold(
      (error) => emit(MoviesState.failure(error)),
      (moviesTitles) => emit(MoviesState.listSuccess(moviesTitles)),
    );
  }

  Future<void> _mapStartedIterableToState(MoviesEventIterableStarted event, Emitter<MoviesState> emit) async {}
}
