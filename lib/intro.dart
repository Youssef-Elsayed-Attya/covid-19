import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:covid19/Home.dart';
import 'package:covid19/constant.dart';
import 'package:covid19/onboardscreen.dart';
import 'package:flutter/material.dart';

class Splach extends StatelessWidget {
  const Splach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: greenColor,
        duration:4000 ,
        splashIconSize: 150,
        splashTransition: SplashTransition.fadeTransition,
        animationDuration:Duration(seconds: 1) ,
        splash: Container(
          child:Image.asset('assets/pic/covi.png')
        ),
        nextScreen: PageOnBoard());
  }
}
