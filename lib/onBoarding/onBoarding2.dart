import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'First Name',
            hintStyle: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'This is how it will appear in Tinder and you will not be able to change it',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
