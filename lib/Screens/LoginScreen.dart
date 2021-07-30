import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Constants/ConstantMsg.dart';
import 'package:home_labz/Screens/BottomNavBar.dart';
import 'package:home_labz/Screens/HomeScreen.dart';
import 'package:http/http.dart' as http;
import 'package:home_labz/Constants/ApiConstants.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phone = new TextEditingController();
  TextEditingController _otp = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                                    padding: EdgeInsets.fromLTRB(
                                        10.0, 0.0, 0.0, 0.0),
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
                                                  color:
                                                      Color(ColorValues.WHITE),
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
              Container(
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
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.grey),
                ),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: TextFormField(
                  controller: _phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                        color: Color(ColorValues.TEXT_COL_GREY),
                        fontSize: 12.0,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.grey),
                ),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        controller: _otp,
                        decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "The OTP Code",
                            hintStyle: TextStyle(
                              color: Color(ColorValues.TEXT_COL_GREY),
                              fontSize: 12.0,
                            )),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 25,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(ColorValues.THEME_TEXT_COLOR),
                          ),
                          child: TextButton(
                            child: Text(
                              "Get Code",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Regular",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            onPressed: () {
                              callGetCodeApi();
                            },
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(ColorValues.DEVIDER_COLOR),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(ColorValues.GRADIENT_COL_1),
                        Color(ColorValues.GRADIENT_COL_2)
                      ]),
                ),
                child: TextButton(
                  onPressed: () {
                    callLoginApi();
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Color(ColorValues.WHITE),
                        fontFamily: "Regular",
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              Container(
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
                          fontFamily: "Regular",
                          fontWeight: FontWeight.w300,
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
                          fontFamily: "Regular",
                          fontWeight: FontWeight.w300,
                        ),
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
                          fontFamily: "Regular",
                          fontWeight: FontWeight.w300,
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
                            fontFamily: "Regular",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }

  void callLoginApi() async {
    try {
      var url = Uri.parse(ApiConstants.VERIFY_OTP_API);
      Map<String, String> headers = {"Content-type": "application/json"};
      Map map = {
        // "mobileNumber": _phone.text,
        // "otp": _otp.text

        ConstantMsg.MOBILE_NUM: "3333333301",
        ConstantMsg.OTP: 123456
      };
      // make POST request
      http.Response response =
          await post(url, headers: headers, body: json.encode(map));

      String body = response.body;
      var data = json.decode(body);
      if (data["oAuthResponse"].toString() != null) {
        print(body);

        Navigator.pushReplacement(
            context,
            new MaterialPageRoute(
                builder: (BuildContext context) => BottomNavBar()));
      } else {}
    } catch (e) {
      print("Error+++++" + e.toString());
    }
  }

  void callGetCodeApi() {}
}
