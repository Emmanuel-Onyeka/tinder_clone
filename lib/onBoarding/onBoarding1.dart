import 'package:flutter/material.dart';
import 'package:tinder_app/screens/login_screen.dart';

class OnBoarding1 extends StatelessWidget {
  PageController controller;

  OnBoarding1(this.controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 45,
              ),
              color: Colors.black54,
              onPressed: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                  child: Image(
                    image: AssetImage('images/logo.jpg'),
                  ),
                ),
                Text(
                  'Welcome to Tinder',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xff262424),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Please follow these House Rules.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black54),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                      color: Color(0xFFFF7166),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Be Yourself.',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: const Color(0xff262424),
                          ),
                    ),
                  ],
                ),
                Text(
                    'Make sure your photos, age, and bio are true to who you are.',
                    style: Theme.of(context).textTheme.titleMedium),
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                      color: Color(0xFFFF377D),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Stay safe.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: const Color(0xff262424),
                          ),
                    ),
                  ],
                ),
                Text(
                    'Don\'t be too quick to give out personal information. Date safely',
                    style: Theme.of(context).textTheme.titleMedium),
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                      color: Color(0xFFFF7166),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Play it cool.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: const Color(0xff262424),
                          ),
                    ),
                  ],
                ),
                Text(
                    'Respect others and treat them as you would like to be treated.',
                    style: Theme.of(context).textTheme.titleMedium),
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                      color: Color(0xFFFF377D),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Be proactive.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: const Color(0xff262424),
                          ),
                    ),
                  ],
                ),
                Text('Always report bad behaviour.',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.animateToPage(
                        1,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeIn,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: const Color(0xFFFF377D),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('I AGREE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
