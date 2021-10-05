import 'package:flutter/material.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: CircularProgressIndicator(),
      ),
    );
  }
}
