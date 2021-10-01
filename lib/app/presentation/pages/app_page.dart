import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Imdb', style: Theme.of(context).textTheme.headline1),
    );
  }
}
