// ignore_for_file: avoid_catching_errors
import 'package:dartz/dartz.dart';
import 'package:flutter_imdb/app/data/app_database.dart';
import 'package:flutter_imdb/movies/data/daos/movies_titles.dart';
import 'package:moor/moor.dart';

part 'movie_title_dao.g.dart';

typedef EitherMoviesTitles = Either<Error, List<MovieTitle>>;

@UseDao(tables: [MoviesTitles])
class MovieTitleDao extends DatabaseAccessor<AppDatabase> with _$MovieTitleDaoMixin {
  MovieTitleDao(this.db) : super(db);

  final AppDatabase db;

  Future<EitherMoviesTitles> getMoviesTitles(int limit, {int? offset}) async {
    try {
      final titles = select(moviesTitles)..limit(limit, offset: offset);
      return Right(await titles.get());
    } on StateError catch (error) {
      return Left(error);
    }
  }
}
