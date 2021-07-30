import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Screens/BookingDetails.dart';
import 'package:home_labz/Screens/BookingDetailsScreen.dart';
import 'package:home_labz/Screens/SettingsScreen.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color(ColorValues.THEME_TEXT_COLOR)),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(ColorValues.WHITE),
                        shape: BoxShape.circle),
                    width: 120,
                    height: 120,
                    child: Image.asset('assets/images/logo.png',
                        height: 90, width: 90),
                  ),
                )),
            ListTile(
            onTap: () => callSettingsScreen(),
              leading: ImageIcon(
                AssetImage('assets/images/settings.png'),
                color: Color(ColorValues.THEME_TEXT_COLOR),
                size: 20,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Color(ColorValues.THEME_TEXT_COLOR),
                  fontSize: 16.0,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 2,
              color: Color(ColorValues.GREY_TEXT_COLOR),
            ),
            ListTile(
              onTap: (){
                callLogout();
              },
              leading: ImageIcon(
                AssetImage('assets/images/logout.png'),
                color: Color(ColorValues.THEME_TEXT_COLOR),
                size: 20,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Color(ColorValues.THEME_TEXT_COLOR),
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  callSettingsScreen() {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) => SettingsScreen()));
  }

  callLogout() {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) => BookingDetails()));
  }
}
