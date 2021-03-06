part of 'movies_bloc.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState.init() = MoviesStateInit;

  const factory MoviesState.inProgress() = MoviesStateInProgress;

  const factory MoviesState.listSuccess({
    required final List<MovieTitle> moviesTitles,
    required final ListInfo listInfo,
  }) = MoviesStateListSuccess;

  const factory MoviesState.iterableSuccess(final MovieTitleIterable moviesTitles) = MoviesStateIterableSuccess;

  const factory MoviesState.failure(final Error error) = MoviesStateFailure;
}
