part of 'movies_bloc.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState.init() = MoviesStateInit;

  const factory MoviesState.inProgress() = MoviesStateInProgress;

  const factory MoviesState.listSuccess(final List<MovieTitle> moviesTitles) = MoviesStateListSuccess;

  const factory MoviesState.iterableSuccess(final Iterable<MovieTitle> moviesTitles) = MoviesStateIterableSuccess;

  const factory MoviesState.failure(final Error error) = MoviesStateFailure;
}