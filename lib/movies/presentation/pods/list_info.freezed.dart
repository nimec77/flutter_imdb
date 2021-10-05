// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListInfoTearOff {
  const _$ListInfoTearOff();

  _ListInfo call(
      {required int start,
      required int end,
      required int length,
      required bool hasReachedEnd}) {
    return _ListInfo(
      start: start,
      end: end,
      length: length,
      hasReachedEnd: hasReachedEnd,
    );
  }
}

/// @nodoc
const $ListInfo = _$ListInfoTearOff();

/// @nodoc
mixin _$ListInfo {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListInfoCopyWith<ListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListInfoCopyWith<$Res> {
  factory $ListInfoCopyWith(ListInfo value, $Res Function(ListInfo) then) =
      _$ListInfoCopyWithImpl<$Res>;
  $Res call({int start, int end, int length, bool hasReachedEnd});
}

/// @nodoc
class _$ListInfoCopyWithImpl<$Res> implements $ListInfoCopyWith<$Res> {
  _$ListInfoCopyWithImpl(this._value, this._then);

  final ListInfo _value;
  // ignore: unused_field
  final $Res Function(ListInfo) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? length = freezed,
    Object? hasReachedEnd = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedEnd: hasReachedEnd == freezed
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ListInfoCopyWith<$Res> implements $ListInfoCopyWith<$Res> {
  factory _$ListInfoCopyWith(_ListInfo value, $Res Function(_ListInfo) then) =
      __$ListInfoCopyWithImpl<$Res>;
  @override
  $Res call({int start, int end, int length, bool hasReachedEnd});
}

/// @nodoc
class __$ListInfoCopyWithImpl<$Res> extends _$ListInfoCopyWithImpl<$Res>
    implements _$ListInfoCopyWith<$Res> {
  __$ListInfoCopyWithImpl(_ListInfo _value, $Res Function(_ListInfo) _then)
      : super(_value, (v) => _then(v as _ListInfo));

  @override
  _ListInfo get _value => super._value as _ListInfo;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? length = freezed,
    Object? hasReachedEnd = freezed,
  }) {
    return _then(_ListInfo(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedEnd: hasReachedEnd == freezed
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ListInfo implements _ListInfo {
  const _$_ListInfo(
      {required this.start,
      required this.end,
      required this.length,
      required this.hasReachedEnd});

  @override
  final int start;
  @override
  final int end;
  @override
  final int length;
  @override
  final bool hasReachedEnd;

  @override
  String toString() {
    return 'ListInfo(start: $start, end: $end, length: $length, hasReachedEnd: $hasReachedEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListInfo &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedEnd, hasReachedEnd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(hasReachedEnd);

  @JsonKey(ignore: true)
  @override
  _$ListInfoCopyWith<_ListInfo> get copyWith =>
      __$ListInfoCopyWithImpl<_ListInfo>(this, _$identity);
}

abstract class _ListInfo implements ListInfo {
  const factory _ListInfo(
      {required int start,
      required int end,
      required int length,
      required bool hasReachedEnd}) = _$_ListInfo;

  @override
  int get start => throw _privateConstructorUsedError;
  @override
  int get end => throw _privateConstructorUsedError;
  @override
  int get length => throw _privateConstructorUsedError;
  @override
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListInfoCopyWith<_ListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
