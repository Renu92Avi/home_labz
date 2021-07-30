import 'package:flutter/material.dart';
import 'package:home_labz/Component/ColorValues.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({Key? key}) : super(key: key);

  @override
  _BookingDetailsScreenState createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Booking Details',
            style: TextStyle(color: Color(ColorValues.WHITE), fontSize: 20),
          ),
          // leading: IconButton(
          //   icon: ImageIcon(
          //     AssetImage('assets/images/drawer.png'),
          //     color: Color(ColorValues.WHITE),
          //     size: 50,
          //   ),
          //   onPressed: () => Scaffold.of(context).openDrawer(),
          // ),
        ),
        backgroundColor: Color(ColorValues.THEME_TEXT_COLOR),
        body: SingleChildScrollView(
            child: Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                    color: const Color(ColorValues.WHITE),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                      child: Text(
                        'Demet Polat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(ColorValues.THEME_TEXT_COLOR)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Text(
                        'Union Laboratory',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(ColorValues.GREY_TEXT_COLOR)),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(ColorValues.WHITE),
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 7.0, // soften the shadow
                              spreadRadius: 0.0, //extend the shadow
                            )
                          ],
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                                Container(
                                  child: Text('Address',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(ColorValues.THEME_TEXT_COLOR),
                                  ),),
                                ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0,5,0,0),
                              child: Text('ddgg vjhhj,  hgcv, hvh bkjh ghvh, hvjvj vkj bjkjk, xfggc, xgghc ghccgh, cghchghg',style: TextStyle(
                                fontSize: 12,
                                color: Color(ColorValues.GREY_TEXT_COLOR),
                              ),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text('Date',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(ColorValues.THEME_TEXT_COLOR),
                                  ),),
                                ),
                                Container(
                                  child: Text('Time',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(ColorValues.THEME_TEXT_COLOR),
                                  ),),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                               Text('Wednesday,09 June 2021',style: TextStyle(
                                    fontSize: 12,
                                    color: Color(ColorValues.GREY_TEXT_COLOR),
                                  ),),
                               Text('05:00PM',style: TextStyle(
                                    fontSize: 12,
                                    color: Color(ColorValues.GREY_TEXT_COLOR),
                                  ),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                               Text('Date of birth',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(ColorValues.THEME_TEXT_COLOR),
                                  ),),
                              Text('Gender',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(ColorValues.THEME_TEXT_COLOR),
                                  ),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                               Text('10 May 1995',style: TextStyle(
                                    fontSize: 12,
                                    color: Color(ColorValues.GREY_TEXT_COLOR),
                                  ),),
                              Text('Female',style: TextStyle(
                                    fontSize: 12,
                                    color: Color(ColorValues.GREY_TEXT_COLOR),
                                  ),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                               Text('Contact No.',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(ColorValues.THEME_TEXT_COLOR),
                                  ),),
                                Text('Prescription',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(ColorValues.THEME_TEXT_COLOR),
                                  ),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('1234567890',style: TextStyle(
                                    fontSize: 12,
                                    color: Color(ColorValues.GREY_TEXT_COLOR),
                                  ),),
                                Image.asset('assets/images/calendar.png', height: 40,width: 35,)

                              ],
                            ),
                            Container(
                              child: Text('Status',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(ColorValues.THEME_TEXT_COLOR),
                              ),),
                            ),
                            Container(
                              child: Text('Lab',style: TextStyle(
                                fontSize: 12,
                                color: Color(ColorValues.GREY_TEXT_COLOR),
                              ),),
                            ),
                          ],
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            )
        ));
  }
}
