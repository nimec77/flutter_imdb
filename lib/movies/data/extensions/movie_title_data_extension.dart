import 'package:flutter_imdb/app/data/app_database.dart';
import 'package:flutter_imdb/movies/domain/entities/movie_title.dart';

extension MovieTitleDataExtension on MovieTitleData {
  MovieTitle toMovieTitle() => MovieTitle(
        titleId: titleId,
        type: type,
        primaryTitle: primaryTitle,
        originalTitle: originalTitle,
        isAdult: isAdult,
        genres: genres,
      );
}
