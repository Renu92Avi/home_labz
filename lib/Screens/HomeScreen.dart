import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new DrawerHeader(
                  child: new Image.asset(
                'assets/images/logo.png',height: 20, width: 20,
              )
              ),
              color: Color(ColorValues.THEME_TEXT_COLOR),
            ),
            new Container(
              color: Color(ColorValues.WHITE),
              child: new Column(
                children: new List.generate(4, (int index) {
                  return new ListTile(
                    leading: new Icon(Icons.info),
                  );
                }),
              ),
            )
          ],
        ),
      ),
      /*   drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                child: DrawerHeader(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color(ColorValues.WHITE),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                )
                ),
                // child: Text("Header"),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                ListTile(
                  title: Text("Settings"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Logout"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
            )
          ],
        ),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Image.asset(
              'assets/images/settings.png',
              height: 15,
              width: 15,
            ),
            title: new Text('Booking'),
          ),
          BottomNavigationBarItem(
            icon: new Image.asset(
              'assets/images/logout.png',
              height: 15,
              width: 15,
            ),
            title: new Text('History'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Notification')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
    );
  }
}
