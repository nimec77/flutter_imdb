// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'init_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitEventTearOff {
  const _$InitEventTearOff();

  InitEventStarted started() {
    return const InitEventStarted();
  }
}

/// @nodoc
const $InitEvent = _$InitEventTearOff();

/// @nodoc
mixin _$InitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitEventCopyWith<$Res> {
  factory $InitEventCopyWith(InitEvent value, $Res Function(InitEvent) then) =
      _$InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventCopyWithImpl<$Res> implements $InitEventCopyWith<$Res> {
  _$InitEventCopyWithImpl(this._value, this._then);

  final InitEvent _value;
  // ignore: unused_field
  final $Res Function(InitEvent) _then;
}

/// @nodoc
abstract class $InitEventStartedCopyWith<$Res> {
  factory $InitEventStartedCopyWith(
          InitEventStarted value, $Res Function(InitEventStarted) then) =
      _$InitEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventStartedCopyWithImpl<$Res> extends _$InitEventCopyWithImpl<$Res>
    implements $InitEventStartedCopyWith<$Res> {
  _$InitEventStartedCopyWithImpl(
      InitEventStarted _value, $Res Function(InitEventStarted) _then)
      : super(_value, (v) => _then(v as InitEventStarted));

  @override
  InitEventStarted get _value => super._value as InitEventStarted;
}

/// @nodoc

class _$InitEventStarted implements InitEventStarted {
  const _$InitEventStarted();

  @override
  String toString() {
    return 'InitEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class InitEventStarted implements InitEvent {
  const factory InitEventStarted() = _$InitEventStarted;
}

/// @nodoc
class _$InitStateTearOff {
  const _$InitStateTearOff();

  InitStateNotInitialized notInitialized() {
    return const InitStateNotInitialized();
  }

  InitStateInProgress inProgress() {
    return const InitStateInProgress();
  }

  InitStateSuccess success() {
    return const InitStateSuccess();
  }
}

/// @nodoc
const $InitState = _$InitStateTearOff();

/// @nodoc
mixin _$InitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInitialized value) notInitialized,
    required TResult Function(InitStateInProgress value) inProgress,
    required TResult Function(InitStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(this._value, this._then);

  final InitState _value;
  // ignore: unused_field
  final $Res Function(InitState) _then;
}

/// @nodoc
abstract class $InitStateNotInitializedCopyWith<$Res> {
  factory $InitStateNotInitializedCopyWith(InitStateNotInitialized value,
          $Res Function(InitStateNotInitialized) then) =
      _$InitStateNotInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateNotInitializedCopyWithImpl<$Res>
    extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateNotInitializedCopyWith<$Res> {
  _$InitStateNotInitializedCopyWithImpl(InitStateNotInitialized _value,
      $Res Function(InitStateNotInitialized) _then)
      : super(_value, (v) => _then(v as InitStateNotInitialized));

  @override
  InitStateNotInitialized get _value => super._value as InitStateNotInitialized;
}

/// @nodoc

class _$InitStateNotInitialized implements InitStateNotInitialized {
  const _$InitStateNotInitialized();

  @override
  String toString() {
    return 'InitState.notInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitStateNotInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return notInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return notInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInitialized value) notInitialized,
    required TResult Function(InitStateInProgress value) inProgress,
    required TResult Function(InitStateSuccess value) success,
  }) {
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
  }) {
    return notInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class InitStateNotInitialized implements InitState {
  const factory InitStateNotInitialized() = _$InitStateNotInitialized;
}

/// @nodoc
abstract class $InitStateInProgressCopyWith<$Res> {
  factory $InitStateInProgressCopyWith(
          InitStateInProgress value, $Res Function(InitStateInProgress) then) =
      _$InitStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateInProgressCopyWithImpl<$Res>
    extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateInProgressCopyWith<$Res> {
  _$InitStateInProgressCopyWithImpl(
      InitStateInProgress _value, $Res Function(InitStateInProgress) _then)
      : super(_value, (v) => _then(v as InitStateInProgress));

  @override
  InitStateInProgress get _value => super._value as InitStateInProgress;
}

/// @nodoc

class _$InitStateInProgress implements InitStateInProgress {
  const _$InitStateInProgress();

  @override
  String toString() {
    return 'InitState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInitialized value) notInitialized,
    required TResult Function(InitStateInProgress value) inProgress,
    required TResult Function(InitStateSuccess value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InitStateInProgress implements InitState {
  const factory InitStateInProgress() = _$InitStateInProgress;
}

/// @nodoc
abstract class $InitStateSuccessCopyWith<$Res> {
  factory $InitStateSuccessCopyWith(
          InitStateSuccess value, $Res Function(InitStateSuccess) then) =
      _$InitStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateSuccessCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateSuccessCopyWith<$Res> {
  _$InitStateSuccessCopyWithImpl(
      InitStateSuccess _value, $Res Function(InitStateSuccess) _then)
      : super(_value, (v) => _then(v as InitStateSuccess));

  @override
  InitStateSuccess get _value => super._value as InitStateSuccess;
}

/// @nodoc

class _$InitStateSuccess implements InitStateSuccess {
  const _$InitStateSuccess();

  @override
  String toString() {
    return 'InitState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInitialized value) notInitialized,
    required TResult Function(InitStateInProgress value) inProgress,
    required TResult Function(InitStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInitialized value)? notInitialized,
    TResult Function(InitStateInProgress value)? inProgress,
    TResult Function(InitStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class InitStateSuccess implements InitState {
  const factory InitStateSuccess() = _$InitStateSuccess;
}
