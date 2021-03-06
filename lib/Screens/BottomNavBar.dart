import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Screens/BookingScreen.dart';
import 'package:home_labz/Screens/HistoryScreen.dart';
import 'package:home_labz/Screens/MyDrawer.dart';
import 'package:home_labz/Screens/NotificationScreen.dart';
import 'package:home_labz/Screens/ProfileScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  // GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  late String _title;

  @override
  initState(){
    _title = '';
  }

  final List<Widget> _screens = [
    BookingScreen(),
    HistoryScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
      switch(index) {
        case 0: { _title = ''; }
        break;
        case 1: { _title = 'History'; }
        break;
        case 2: { _title = 'Notification'; }
        break;
        case 3: { _title = 'Profile'; }
        break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          _title,
          style: TextStyle(
              color: Color(ColorValues.WHITE),
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: ImageIcon(
              AssetImage('assets/images/drawer.png'),
              color: Color(ColorValues.WHITE),
              size: 50,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: Center(
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Color(ColorValues.THEME_TEXT_COLOR),
          unselectedItemColor: Color(ColorValues.UNSELECTED_TAB_COLOR),
          iconSize: 25,
          onTap: _onItemTap,
          elevation: 5,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/booking_cal_selected.png"),
              ),
              title: new Text('Booking'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/history_selected.png"),
              ),
              title: new Text(
                'History',
              ),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/notification_bell_selected.png"),
              ),
              title: new Text('Notification'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/profile_selected.png"),
              ),
              title: new Text('Profile'),
            ),
          ]),
      drawer: MyDrawer(),
    );
  }
}
