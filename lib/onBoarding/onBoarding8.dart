import 'package:flutter/material.dart';
import 'package:tinder_app/screens/tinder_main.dart';

class OnBoarding8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Add at least 2 photos to continue',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.77,
              ),
              children: [
                Card(
                  color: Colors.pink,
                ),
                Card(
                  color: Colors.pink,
                ),
                Card(
                  color: Colors.pink,
                ),
                Card(
                  color: Colors.pink,
                ),
                Card(
                  color: Colors.pink,
                ),
                Card(
                  color: Colors.pink,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(TinderMain.routeName);
            },
            child: Text(
              'Home Screen',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
