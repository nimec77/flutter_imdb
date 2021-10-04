import 'package:dartz/dartz.dart';
import 'package:flutter_imdb/movies/domain/entities/movie_title.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_dao.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_iterable.dart';

class MovieTitleIterableImp implements MovieTitleIterable {
  MovieTitleIterableImp(this.movieTitleDao);

  final MovieTitleDao movieTitleDao;

  @override
  Either<Error, MovieTitle> operator [](int index) {
    throw UnimplementedError();
  }

}
