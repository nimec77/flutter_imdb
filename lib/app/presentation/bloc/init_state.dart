part of 'init_bloc.dart';

@freezed
class InitState with _$InitState {
  const factory InitState.notInitialized() = InitStateNotInitialized;

  const factory InitState.inProgress() = InitStateInProgress;

  const factory InitState.success() = InitStateSuccess;
}
