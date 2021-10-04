import 'package:flutter_imdb/movies/data/daos/movie_title_dao.dart';
import 'package:flutter_imdb/movies/data/daos/movies_titles.dart';
import 'package:moor/moor.dart';

part 'app_database.g.dart';

@UseMoor(tables: [MoviesTitles], daos: [MovieTitleDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor queryExecutor) : super(queryExecutor);

  AppDatabase.connect(DatabaseConnection connection) : super.connect(connection);

  @override
  int get schemaVersion => 1;
}
