import 'package:flutter/material.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Init', style: Theme.of(context).textTheme.headline1),
    );
  }
}
