import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Constants/ConstantMsg.dart';
import 'package:home_labz/Screens/NotificationScreen.dart';
import 'package:home_labz/Screens/ProfileScreen.dart';
import 'package:home_labz/Screens/TodayBookings.dart';
import 'package:home_labz/Screens/UpcomingBookings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  late String _name = "Demet Polat";
  late SharedPreferences preferences;
  TextEditingController _search = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSharedPreferences();
  }

  getSharedPreferences() async {
    preferences = await SharedPreferences.getInstance();
    // _name = preferences.getString(ConstantMsg.NAME)!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 140.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 10),
                                  child: Text(
                                    "Welcome",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Regular',
                                        fontWeight: FontWeight.w400,
                                        color: Color(ColorValues.WHITE)),),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 7),
                                  child: Text(
                                    _name,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Color(ColorValues.WHITE)),),
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                            child: Image.asset(
                              "assets/images/Device.png",
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(12.0),
                            margin: EdgeInsets.fromLTRB(10,10, 0,10),
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: Color(ColorValues.WHITE),
                                borderRadius: BorderRadius.circular(20)),
                            child: TextField(
                              controller: _search,
                              // onEditingComplete: () {
                              //   _flag = true;
                              // },
                              autofocus: false,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Regular",
                                color: Color(ColorValues.BLACK_TEXT_COL),
                              ),
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 0, bottom: 10, top: 10, right: 10),
                                icon: ImageIcon(
                                  AssetImage("assets/images/search_icon.png"),
                                  color: Color(ColorValues.THEME_TEXT_COLOR),
                                ),
                                hintText: 'Search Doctor by Name',
                                hintStyle: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Regular",
                                  fontWeight: FontWeight.w300,
                                  color: Color(ColorValues.BLACK_TEXT_COL),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(12.0),
                            margin: EdgeInsets.fromLTRB(0,10, 10,10),
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                                color: Color(ColorValues.WHITE),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                            "assets/images/sort_icon.png",
                          ),
                          ),
                        ]),
                  ]),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    //indicatorPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color(ColorValues.THEME_TEXT_COLOR),
                            width: 2.0),
                      ),
                    ),
                    labelStyle: new TextStyle(
                        color: ColorValues.TEXT_COLOR,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Regular",
                        fontSize: 14.0),
                    indicatorColor: Color(ColorValues.THEME_TEXT_COLOR),
                    labelColor: Color(ColorValues.THEME_TEXT_COLOR),
                    unselectedLabelColor: ColorValues.TEXT_COLOR,

                    tabs: [
                      Tab(text: "   Today\'s bookings   "),
                      Tab(text: "   Upcoming bookings   ")
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              TodayBookings(),
              UpcomingBookings(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
        color: Color(ColorValues.THEME_TEXT_COLOR),
        child: new Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0)),
            border: Border.all(color: Colors.white),
            color: Colors.white,
          ),
          child: _tabBar,
        ));
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
