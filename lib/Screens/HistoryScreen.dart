import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';
import 'package:home_labz/Screens/CompletedBookings.dart';
import 'package:home_labz/Screens/RejectedBookings.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  TextEditingController _search = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 60.0,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(12.0),
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
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
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
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
                      Tab(text: "   Completed bookings   "),
                      Tab(text: "   Rejected bookings   ")
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              CompletedBookings(),
              RejectedBookings(),
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
