// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_titles_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesTitlesInfoTearOff {
  const _$MoviesTitlesInfoTearOff();

  _MoviesTitlesInfo call(
      {required String startTitleId, required String endTitleId}) {
    return _MoviesTitlesInfo(
      startTitleId: startTitleId,
      endTitleId: endTitleId,
    );
  }
}

/// @nodoc
const $MoviesTitlesInfo = _$MoviesTitlesInfoTearOff();

/// @nodoc
mixin _$MoviesTitlesInfo {
  String get startTitleId => throw _privateConstructorUsedError;
  String get endTitleId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesTitlesInfoCopyWith<MoviesTitlesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesTitlesInfoCopyWith<$Res> {
  factory $MoviesTitlesInfoCopyWith(
          MoviesTitlesInfo value, $Res Function(MoviesTitlesInfo) then) =
      _$MoviesTitlesInfoCopyWithImpl<$Res>;
  $Res call({String startTitleId, String endTitleId});
}

/// @nodoc
class _$MoviesTitlesInfoCopyWithImpl<$Res>
    implements $MoviesTitlesInfoCopyWith<$Res> {
  _$MoviesTitlesInfoCopyWithImpl(this._value, this._then);

  final MoviesTitlesInfo _value;
  // ignore: unused_field
  final $Res Function(MoviesTitlesInfo) _then;

  @override
  $Res call({
    Object? startTitleId = freezed,
    Object? endTitleId = freezed,
  }) {
    return _then(_value.copyWith(
      startTitleId: startTitleId == freezed
          ? _value.startTitleId
          : startTitleId // ignore: cast_nullable_to_non_nullable
              as String,
      endTitleId: endTitleId == freezed
          ? _value.endTitleId
          : endTitleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MoviesTitlesInfoCopyWith<$Res>
    implements $MoviesTitlesInfoCopyWith<$Res> {
  factory _$MoviesTitlesInfoCopyWith(
          _MoviesTitlesInfo value, $Res Function(_MoviesTitlesInfo) then) =
      __$MoviesTitlesInfoCopyWithImpl<$Res>;
  @override
  $Res call({String startTitleId, String endTitleId});
}

/// @nodoc
class __$MoviesTitlesInfoCopyWithImpl<$Res>
    extends _$MoviesTitlesInfoCopyWithImpl<$Res>
    implements _$MoviesTitlesInfoCopyWith<$Res> {
  __$MoviesTitlesInfoCopyWithImpl(
      _MoviesTitlesInfo _value, $Res Function(_MoviesTitlesInfo) _then)
      : super(_value, (v) => _then(v as _MoviesTitlesInfo));

  @override
  _MoviesTitlesInfo get _value => super._value as _MoviesTitlesInfo;

  @override
  $Res call({
    Object? startTitleId = freezed,
    Object? endTitleId = freezed,
  }) {
    return _then(_MoviesTitlesInfo(
      startTitleId: startTitleId == freezed
          ? _value.startTitleId
          : startTitleId // ignore: cast_nullable_to_non_nullable
              as String,
      endTitleId: endTitleId == freezed
          ? _value.endTitleId
          : endTitleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MoviesTitlesInfo implements _MoviesTitlesInfo {
  const _$_MoviesTitlesInfo(
      {required this.startTitleId, required this.endTitleId});

  @override
  final String startTitleId;
  @override
  final String endTitleId;

  @override
  String toString() {
    return 'MoviesTitlesInfo(startTitleId: $startTitleId, endTitleId: $endTitleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoviesTitlesInfo &&
            (identical(other.startTitleId, startTitleId) ||
                const DeepCollectionEquality()
                    .equals(other.startTitleId, startTitleId)) &&
            (identical(other.endTitleId, endTitleId) ||
                const DeepCollectionEquality()
                    .equals(other.endTitleId, endTitleId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startTitleId) ^
      const DeepCollectionEquality().hash(endTitleId);

  @JsonKey(ignore: true)
  @override
  _$MoviesTitlesInfoCopyWith<_MoviesTitlesInfo> get copyWith =>
      __$MoviesTitlesInfoCopyWithImpl<_MoviesTitlesInfo>(this, _$identity);
}

abstract class _MoviesTitlesInfo implements MoviesTitlesInfo {
  const factory _MoviesTitlesInfo(
      {required String startTitleId,
      required String endTitleId}) = _$_MoviesTitlesInfo;

  @override
  String get startTitleId => throw _privateConstructorUsedError;
  @override
  String get endTitleId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MoviesTitlesInfoCopyWith<_MoviesTitlesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
