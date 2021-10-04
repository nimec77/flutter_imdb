part of 'movies_bloc.dart';

@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.listStarted() = MoviesEventListStarted;

  const factory MoviesEvent.iterableStarted() = MoviesEventIterableStarted;
}
