import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';

class MyDrawer extends StatelessWidget {
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
}
