import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'M M / D D / Y Y Y Y',
            hintStyle: TextStyle(
              fontSize: 25,
              letterSpacing: 2,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Your age will be public',
          textAlign: TextAlign.start,
          style: Theme
              .of(context)
              .textTheme
              .titleMedium,
        ),
      ],
    );
  }
}
