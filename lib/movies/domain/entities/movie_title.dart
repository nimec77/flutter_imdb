
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_title.freezed.dart';

@freezed
class MovieTitle with _$MovieTitle {
  const factory MovieTitle({
    required final String titleId,
    required final String type,
    required final String primaryTitle,
    required final String originalTitle,
    required final bool isAdult,
    required final String genres,
    final int? premiered,
    final int? ended,
    final int? runtimeMinutes,
}) = _MovieTitle;
}