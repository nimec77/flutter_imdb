import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_info.freezed.dart';

@freezed
class ListInfo with _$ListInfo {
  const factory ListInfo({
    required final int start,
    required final int end,
    required final int length,
    required final bool hasReachedEnd,
  }) = _ListInfo;
}
