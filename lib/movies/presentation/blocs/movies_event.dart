part of 'movies_bloc.dart';

@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.listStarted() = MoviesEventListStarted;

  const factory MoviesEvent.iterableStarted() = MoviesEventIterableStarted;

  const factory MoviesEvent.nextList(final ListInfo listInfo) = MoviesEventNextList;

  const factory MoviesEvent.prevList(final ListInfo listInfo) = MoviesEventPrevList;
}
