import 'package:flutter/material.dart';
import 'package:flutter_imdb/app/data/providers/sqlite_provider.dart';

Future<void> main() async {
  final sqliteProvider = SqliteProvider();
  await sqliteProvider.open();
  runApp(const MyApp());
  await sqliteProvider.close();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: Text('Imdb', style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}

