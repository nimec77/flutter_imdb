import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/data/providers/sqlite_provider.dart';
import 'package:flutter_imdb/app/presentation/app_bloc_observer.dart';
import 'package:flutter_imdb/app/presentation/routes/init_guard.dart';
import 'package:flutter_imdb/app/presentation/routes/route.gr.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  runZonedGuarded(
    () => runApp(const ImdbApp()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class ImdbApp extends StatefulWidget {
  const ImdbApp({Key? key}) : super(key: key);

  @override
  State<ImdbApp> createState() => _ImdbAppState();
}

class _ImdbAppState extends State<ImdbApp> {
  final _appRouter = AppRouter(initGuard: InitGuard());

  @override
  void dispose() {
    SqliteProvider().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
