import 'package:flutter/material.dart';

class MoviesListPage extends StatelessWidget {
  const MoviesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Movies List Page', style: Theme.of(context).textTheme.headline1),
    );
  }
}
