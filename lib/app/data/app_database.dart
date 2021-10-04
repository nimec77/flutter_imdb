import 'package:flutter_imdb/movies/data/daos/movie_title_dao_imp.dart';
import 'package:flutter_imdb/movies/data/daos/movies_titles.dart';
import 'package:moor/moor.dart';

part 'app_database.g.dart';

@UseMoor(tables: [MoviesTitles], daos: [MovieTitleDaoImp])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor queryExecutor) : super(queryExecutor);

  AppDatabase.connect(DatabaseConnection connection) : super.connect(connection);

  @override
  int get schemaVersion => 1;
}
