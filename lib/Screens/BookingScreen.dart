import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Screens/NotificationScreen.dart';
import 'package:home_labz/Screens/ProfileScreen.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final List <Widget> _pages = [
    NotificationScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(ColorValues.THEME_TEXT_COLOR),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Container(
              //   margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //       color: const Color(ColorValues.WHITE),
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(50.0),
              //           topRight: Radius.circular(50.0))),
              //   child: Container(
              //     margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
              //     child: DefaultTabController(
              //       length: 2,
              //       child: TabBar(
              //         tabs: <Widget>[
              //           Tab(
              //             text: 'Today\'s bookings',
              //           ),
              //           Tab(
              //             text: 'Upcoming bookings',
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(ColorValues.WHITE),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: 'Today\'s bookings',
                    ),
                    Tab(
                      text: 'Upcoming bookings',
                    )
                  ],
                ),
              ),
              ),

              // TabBarView(),
            ],
          )
        ));
  }
}
