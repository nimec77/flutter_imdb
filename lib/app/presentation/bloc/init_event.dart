part of 'init_bloc.dart';

@freezed
class InitEvent with _$InitEvent {
  const factory InitEvent.started() = InitEventStarted;
}
