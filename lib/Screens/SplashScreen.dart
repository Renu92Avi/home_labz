import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorValues.THEME_TEXT_COLOR),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(ColorValues.WHITE),
              shape: BoxShape.circle),
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.7,
          child: Image.asset('assets/images/logo.png',
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5),
        )
      ),
    );
  }
}

