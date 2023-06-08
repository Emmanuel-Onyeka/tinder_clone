import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './screens/number_v_screen.dart';
import './screens/intro_screen.dart';
import './screens/tinder_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            titleSmall: TextStyle(
              color: Colors.black54,
            ),
            titleMedium: TextStyle(
              color: Colors.black54,
            ),
            titleLarge: TextStyle(
              color: Colors.black54,
            )),
      ),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        NumVerifyScreen.routeName: (ctx) => NumVerifyScreen(),
        OnBoardingScreen.routeName: (ctx) => OnBoardingScreen(),
        TinderMain.routeName: (ctx) => TinderMain(),
      },
    );
  }
}
