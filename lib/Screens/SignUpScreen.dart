
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:home_labz/Constants/ApiConstants.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Constants/ConstantMsg.dart';
import 'package:home_labz/Screens/BottomNavBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // String _name, _password,_mobile,_city,_email,_state,_deliveryAddress,_pincode;
  TextEditingController _code = TextEditingController();
  TextEditingController _mobileNo = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _education = TextEditingController();
  late SharedPreferences preferences;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSharedPreferences();
  }

  getSharedPreferences() async {
    preferences = await SharedPreferences.getInstance();
  }

  void callSignUpApi() async {
    // if (_name.text.isEmpty) {
    //   Fluttertoast.showToast(
    //     msg: ConstantMsg.NAME_VALIDATION,
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     //  backgroundColor: Colors.red,
    //     //   textColor: Colors.white,
    //     //  fontSize: 16.0
    //   );
    // } else {
      try {
        print("body+++++");
        var url = Uri.parse(ApiConstants.SIGN_UP_API);
        Map<String, String> headers = {"Content-type": "application/json"};
        Map map = {
          ConstantMsg.CODE: "123456", //
          ConstantMsg.MOBILE_NUM: "3333333301", //
          ConstantMsg.NAME: _name.text,
          ConstantMsg.ADDRESS: _address.text,
          ConstantMsg.DOB: _dob.text,
          ConstantMsg.EDUCATION: _education.text,
        };
        // make POST request
        Response response =
            await post(url, headers: headers, body: json.encode(map));
        // check the status code for the result
        String body = response.body;
        var data = json.decode(body);
        if (data["oAuthResponse"].toString() != null) {
          print(body);
          preferences.setString(ConstantMsg.ACCESS_TOKEN,
              data['oAuthResponse']['access_token'].toString());
          preferences.setString(ConstantMsg.TOKEN_TYPE,
              data['oAuthResponse']['token_type'].toString());
          preferences.setString(
              ConstantMsg.ID, data['userModel']['id'].toString());
          preferences.setString(
              ConstantMsg.NAME, data['userModel']['name'].toString());
          preferences.setString(ConstantMsg.MOBILE_NUM,
              data['userModel']['mobileNumber'].toString());

          Navigator.pushReplacement(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => BottomNavBar()));
        } else {}
      } catch (ex) {
        print("Error+++++" + ex.toString());
      }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
                                      fontFamily: "Regular",
                                      fontWeight: FontWeight.w400,
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
                controller: _code,
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
                controller: _mobileNo,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Mobile No.",
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
                controller: _name,
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
                controller: _address,
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
                controller: _dob,
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
                controller: _education,
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
                  callSignUpApi();
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

    ));
  }
}
