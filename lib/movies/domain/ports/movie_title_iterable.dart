import 'package:dartz/dartz.dart';
import 'package:flutter_imdb/movies/domain/entities/movie_title.dart';

abstract class MovieTitleIterable {
  Either<Error, MovieTitle> operator[](int index);
}