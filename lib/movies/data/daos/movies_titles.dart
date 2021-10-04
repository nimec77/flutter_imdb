import 'package:moor/moor.dart';

@DataClassName('MovieTitle')
class MoviesTitles extends Table {
  @override
  String get tableName => 'titles';

  TextColumn get titleId => text()();
  TextColumn get type => text()();
  TextColumn get primaryTitle => text()();
  TextColumn get originalTitle => text()();
  BoolColumn get isAdult => boolean()();
  IntColumn get premiered => integer().nullable()();
  IntColumn get ended => integer().nullable()();
  IntColumn get runtimeMinutes => integer().nullable()();
  TextColumn get genres => text()();

  @override
  Set<Column> get primaryKey => {titleId};
}