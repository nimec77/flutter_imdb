import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_titles_info.freezed.dart';

@freezed
class MoviesTitlesInfo with _$MoviesTitlesInfo {
  const factory MoviesTitlesInfo({
    required final String startTitleId,
    required final String endTitleId,
}) = _MoviesTitlesInfo;
}