// ignore_for_file: avoid_catching_errors
import 'package:dartz/dartz.dart';
import 'package:flutter_imdb/app/data/app_database.dart';
import 'package:flutter_imdb/movies/data/daos/movie_title_iterable_imp.dart';
import 'package:flutter_imdb/movies/data/daos/movies_titles.dart';
import 'package:flutter_imdb/movies/data/extensions/movie_title_data_extension.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_dao.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_iterable.dart';
import 'package:moor/moor.dart';

part 'movie_title_dao_imp.g.dart';

@UseDao(tables: [MoviesTitles])
class MovieTitleDaoImp extends DatabaseAccessor<AppDatabase> with _$MovieTitleDaoImpMixin implements MovieTitleDao {
  MovieTitleDaoImp(this.db) : super(db);

  final AppDatabase db;

  @override
  Future<EitherMoviesList> getMoviesList(int limit, {int? offset}) async {
    try {
      final titles = await (select(moviesTitles)
            ..limit(limit, offset: offset)
            ..orderBy([(t) => OrderingTerm(expression: t.titleId)]))
          .get();
      return Right(titles.map((e) => e.toMovieTitle()).toList());
    } on StateError catch (error) {
      return Left(error);
    }
  }

  @override
  //ignore:use_to_and_as_if_applicable
  MovieTitleIterable getMoviesIterable() {
    return MovieTitleIterableImp(this);
  }
}
