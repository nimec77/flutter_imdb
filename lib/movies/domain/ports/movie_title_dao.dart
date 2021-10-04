import 'package:dartz/dartz.dart';
import 'package:flutter_imdb/movies/domain/entities/movie_title.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_iterable.dart';

typedef EitherMoviesList = Either<Error, List<MovieTitle>>;

abstract class MovieTitleDao {
  Future<EitherMoviesList> getMoviesList(int limit, {int? offset});

  MovieTitleIterable getMoviesIterable();
}