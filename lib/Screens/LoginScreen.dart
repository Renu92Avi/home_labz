import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Screens/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  int _counter = 0;
  bool obscureText = true, passwordVisible = false, mobileVisible = false;

  String reply = "";
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final theme = Theme.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 250.0,
                color: Colors.transparent,
                child: Container(
                    width: MediaQuery.of(context).size.width,
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
                            flex: 5,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                                child: new Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: new Wrap(
                                    children: [
                                      new Container(
                                        margin: EdgeInsets.fromLTRB(
                                            5.0, 5.0, 0.0, 3.0),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Welcome To...',
                                          style: TextStyle(
                                            color: Color(ColorValues.WHITE),
                                            fontSize: 22.0,
                                            fontFamily: "customSemiBold",
                                          ),
                                        ),
                                      ),
                                      new Container(
                                          margin: EdgeInsets.fromLTRB(
                                              5.0, 0.0, 0.0, 5.0),
                                          alignment: Alignment.centerLeft,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Sign In To Continue',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color(ColorValues.WHITE),
                                                fontSize: 16.0,
                                                fontFamily: "customLight",
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                )),
                          ),
                          //Add image here
                          Expanded(
                              flex: 5,
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 15, 0),
                                  child: Image.asset(
                                    'assets/images/signin_icon.png',
                                  )))
                        ]))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                      "Please verify your phone number for applying",
                      style: TextStyle(
                          color: const Color(ColorValues.THEME_TEXT_COLOR),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: 'Phone Number',
                  ),
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(ColorValues.TEXT_COL_GREY),
                  ),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: 'The OTP Code'),
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(ColorValues.TEXT_COL_GREY),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(ColorValues.DEVIDER_COLOR),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
//finish()
                      Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen()));
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.green, fontSize: 12),
                    ),
                  ),
                )),
            new Container(
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Image.asset(
                      'assets/images/tick_selected.png',
                      height: 15,
                      width: 15,
                    ),
                  ),
                  new Container(
                    child: new Text(
                      "I agree to ",
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: "customLight",
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {},
                    child: new Text(
                      " TERMS AND CONDITIONS, PRIVACY POLICY",
                      style: TextStyle(
                          fontSize: 10,
                          color: const Color(ColorValues.THEME_TEXT_COLOR),
                          fontFamily: "customLight",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Container(
                    child: new Text(
                      "Don’t Have An Account? ",
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: "customLight",
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {},
                    child: new Text(
                      " Sign Up",
                      style: TextStyle(
                          fontSize: 10.0,
                          color: const Color(ColorValues.THEME_TEXT_COLOR),
                          fontFamily: "customLight",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ])),
    ));
  }
}
