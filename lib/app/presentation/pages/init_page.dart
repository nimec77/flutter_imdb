import 'package:flutter/material.dart';

typedef OnResult = void Function(bool result);

class InitPage extends StatelessWidget {
  const InitPage({Key? key, required this.onResult}) : super(key: key);

  final OnResult onResult;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Init Page', style: Theme.of(context).textTheme.headline1),
          ElevatedButton(
            onPressed: () => onResult(true),
            child: const Text('True'),
          ),
          ElevatedButton(
            onPressed: () => onResult(false),
            child: const Text('False'),
          ),
        ],
      ),
    );
  }
}
