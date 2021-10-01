import 'package:flutter/material.dart';

class MoviesSearchPage extends StatelessWidget {
  const MoviesSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Movies Search Page', style: Theme.of(context).textTheme.headline1),
    );
  }
}
