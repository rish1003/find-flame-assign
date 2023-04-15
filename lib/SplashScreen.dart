import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset("assets/logo.png"),
      nextScreen: Home(),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.pinkAccent,
    );
  }
}
