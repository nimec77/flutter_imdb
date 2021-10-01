import 'package:flutter/material.dart';

class MoviesGridPage extends StatelessWidget {
  const MoviesGridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Movies Grid Page', style: Theme.of(context).textTheme.headline1),
    );
  }
}
