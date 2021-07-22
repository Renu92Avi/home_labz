import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(ColorValues.THEME_TEXT_COLOR),
        body: SingleChildScrollView(
            child: Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
                color: const Color(ColorValues.WHITE),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0))),
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: Card(
                elevation: 8,
                child: Container(
                    margin: EdgeInsets.all(15),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 25,
                                width: 40,
                                child: Image.asset('assets/images/booking_cal_selected.png'),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                                  child: Text('10 May, 2021',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(ColorValues.BOOKING_DATE_COL),
                                    ),)
                              ),
                              Container(
                                  child: Text('12:45 PM',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: ColorValues.BLACK,
                                    ),)
                              ),
                       ]),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                            height: 60, child: VerticalDivider(color: Color(ColorValues.DIVIDER_COL))),
                        Expanded(
                          child: new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Text('Demet Polat',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(ColorValues.THEME_TEXT_COLOR),
                                      ),)
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                                    child: Text('Union Laboratory',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(ColorValues.TEXT_COL_GREY),
                                      ),)
                                ),
                                Container(
                                    child: Text('Plot no.456, guege bjeb jkgfjf'
                                        'hjdfghfgo nkogf nkdfnkv fbjgfrg jbkfbjrg sfsj'
                                        'fjksfsf fsnrsf nfnsf ebjesbjfes ekjfbesf ejkfbes',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Color(ColorValues.TEXT_COL_GREY),
                                      ),)
                                ),
                              ]),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        )));
  }
}
