import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Expanded(
        child: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                      color: const Color(ColorValues.THEME_TEXT_COLOR),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.fromLTRB(22, 0, 0, 10),
                                  child: Text(
                                    'Welcome to Homelabz',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: "normal",
                                      color: Color(ColorValues.WHITE),
                                    ),
                                  )),
                              Container(
                                child: Text(
                                  'Sign Up to Continue',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "normal",
                                    color: Color(ColorValues.WHITE),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                            child: Image.asset(
                              'assets/images/signup_icon.png',
                            ),
                          ))
                    ],
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/profile_pic.png'),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: 60,
                  right: 0,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/Camera.png'),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 80, 30, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.grey),
              ),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Code",
                    hintStyle: TextStyle(
                      color: Color(ColorValues.TEXT_COL_GREY),
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.grey),
              ),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Color(ColorValues.TEXT_COL_GREY),
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.grey),
              ),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Address",
                    hintStyle: TextStyle(
                      color: Color(ColorValues.TEXT_COL_GREY),
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.grey),
              ),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Date of birth",
                    hintStyle: TextStyle(
                      color: Color(ColorValues.TEXT_COL_GREY),
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.grey),
              ),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Education",
                    hintStyle: TextStyle(
                      color: Color(ColorValues.TEXT_COL_GREY),
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(70, 30, 70, 20),
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(ColorValues.GRADIENT_COL_1),
                        Color(ColorValues.GRADIENT_COL_2)
                      ]),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
//                   Navigator.pushReplacement(
//                       context,
//                       new MaterialPageRoute(
//                           builder: (BuildContext context) => HomeScreen()));
                },
                child: Text(
                  'PROCEED',
                  style:
                      TextStyle(color: Color(ColorValues.WHITE), fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
