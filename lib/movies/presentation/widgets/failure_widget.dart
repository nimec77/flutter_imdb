import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key, required this.error}) : super(key: key);

  final Error error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error.toString(), style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.red)),
    );
  }
}
