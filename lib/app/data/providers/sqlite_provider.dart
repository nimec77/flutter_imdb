//ignore_for_file:avoid_catching_errors

import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

import 'package:dartz/dartz.dart';
import 'package:flutter_imdb/app/data/constants.dart';
import 'package:flutter_imdb/app/data/pods/isolate_start_request.dart';
import 'package:moor/ffi.dart';
import 'package:moor/isolate.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/open.dart' as sqlite3;

class SqliteProvider {
  factory SqliteProvider() {
    return _sqliteProvider;
  }

  SqliteProvider._();

  static final SqliteProvider _sqliteProvider = SqliteProvider._();

  DatabaseConnection? _databaseConnection;
  MoorIsolate? _moorIsolate;

  Future<Either<Error, DatabaseConnection>> open() async {
    if (_databaseConnection != null) {
      return Right(_databaseConnection!);
    }

    try {
      _databaseConnection = DatabaseConnection.delayed(() async {
        _moorIsolate = await _createMoorIsolate();
        return _moorIsolate!.connect();
      }());
      return Right(_databaseConnection!);
    } on ArgumentError catch (error) {
      return Left(error);
    }
  }

  Future<void> close() async {
    await _databaseConnection?.executor.close();
    await _databaseConnection?.streamQueries.close();
    _databaseConnection = null;
    await _moorIsolate?.shutdownAll();
    _moorIsolate = null;
  }

  Future<MoorIsolate> _createMoorIsolate() async {
    final receivePort = ReceivePort();

    final dir = await getApplicationDocumentsDirectory();
    final path = p.join(dir.path, kSqliteBasename);

    await Isolate.spawn(
      _startBackground,
      IsolateStartRequest(sendMoorIsolate: receivePort.sendPort, targetPath: path),
    );

    return await receivePort.first as MoorIsolate;
  }

  void _startBackground(IsolateStartRequest request) {
    sqlite3.open.overrideFor(sqlite3.OperatingSystem.linux, _openOnLinux);

    final executor = VmDatabase(File(request.targetPath), logStatements: true);

    final moorIsolate = MoorIsolate.inCurrent(() => DatabaseConnection.fromExecutor(executor));

    request.sendMoorIsolate.send(moorIsolate);
  }

  DynamicLibrary _openOnLinux() {
    return DynamicLibrary.open(kSqliteLib);
  }
}
