import 'package:flutter/material.dart';

import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Screens/BottomNavBar.dart';
import 'package:home_labz/Screens/HomeScreen.dart';
import 'package:home_labz/Screens/LoginScreen.dart';
import 'package:home_labz/Screens/SettingsScreen.dart';
import 'package:home_labz/Screens/SignUpScreen.dart';
import 'package:home_labz/Screens/SplashScreen.dart';
import 'package:home_labz/Screens/TestingScreen.dart';

void main(){
  runApp(
    new MaterialApp(
      title: 'Test',
      debugShowCheckedModeBanner: true,
      theme: new ThemeData(
        primaryColor: ColorValues.TEXT_COLOR,

      ),
      home: new MyApp(),
      // routes: <String, WidgetBuilder>{
      //   '/startscreen': (BuildContext context) => new StartScreen(),
      //   '/HomeScreen': (BuildContext context) => TabsPage(selectedIndex: 0)
      // },
    ));
 // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // primaryColor: Colors.blue,
            primaryColor: const Color(ColorValues.THEME_TEXT_COLOR)
        ),
      // home:HomeScreen()
      //   home:LoginScreen()
      //   home:BottomNavBar()
        home:SettingsScreen()
      //   home:SplashScreen()
      //   home:SignUpScreen()
        // home:TestingScreen()
    );
  }
}
