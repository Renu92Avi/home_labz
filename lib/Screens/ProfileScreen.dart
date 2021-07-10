import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorValues.THEME_TEXT_COLOR),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: const Color(ColorValues.WHITE),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0))),
          ),
          Positioned(
              top: 150,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Container(
            margin: EdgeInsets.fromLTRB(40,50,40,50),
            decoration: BoxDecoration(
              color: Color(ColorValues.WHITE),
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0, // soften the shadow
                  spreadRadius: 0.0, //extend the shadow
                )
              ],
            ),
          )),
        ],
      )),
    );
  }
}
