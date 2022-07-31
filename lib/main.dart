import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coditas_assignment_2/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: 'Montserrat'),
      home: AnimatedSplashScreen(
        splash: Container(
            child: Image.asset(
              'assets/images/coditas.png',
              fit: BoxFit.cover,
            ),
            width: double.infinity),
        splashIconSize: 1000,
        nextScreen: const Homescreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
