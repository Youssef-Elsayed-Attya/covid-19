import 'package:covid19/Home.dart';
import 'package:covid19/intro.dart';
import 'package:flutter/material.dart';
import 'onboardscreen.dart';
void main()=> runApp(covid_19());
class covid_19 extends StatelessWidget {
  const covid_19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Muli-Bold'),
      title: 'OnBording',
      home: Splach(),
    );
  }
}
