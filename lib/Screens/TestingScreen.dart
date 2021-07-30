// import 'package:flutter/material.dart';
// import 'package:home_labz/Component/ColorValues.dart';
//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(ColorValues.THEME_TEXT_COLOR),
//
//       body: SingleChildScrollView(
//         child: Expanded(
//           flex:1,
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               // Container(
//               //   alignment: Alignment.center,
//               //   child: Text("Profile"),
//               // ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height * 0.8,
//                 decoration: BoxDecoration(
//                     color: const Color(ColorValues.WHITE),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(50.0),
//                         topRight: Radius.circular(50.0))),
//               ),
//               Positioned(
//                 left: 0,
//                 right: 0,
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                   ),
//                   child: Image.asset('assets/images/profile_pic.png'),
//                 ),
//               ),
//               Positioned(
//                   top: 60,
//                   left: 60,
//                   right: 0,
//                 child: InkWell(
//                     onTap: (){
//                       changeProfilePic();
//                     },
//                   child: Container(
//                     height: 45,
//                     width: 45,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: Image.asset('assets/images/Camera.png'),
//                   ))),
//               Positioned(
//                 top: 70,
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 child: Wrap(children: [
//                   Container(
//                       margin: EdgeInsets.fromLTRB(40, 50, 40, 50),
//                       decoration: BoxDecoration(
//                         color: Color(ColorValues.WHITE),
//                         shape: BoxShape.rectangle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey,
//                             blurRadius: 7.0, // soften the shadow
//                             spreadRadius: 0.0, //extend the shadow
//                           )
//                         ],
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               Container(
//                                   margin: EdgeInsets.fromLTRB(20, 50, 30, 0),
//                                   child: Image.asset(
//                                     'assets/images/user_name.png',
//                                     height: 21,
//                                     width: 21,
//                                   )),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'Name',
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           fontFamily: "Regular",
//                                           fontWeight: FontWeight.w700,
//                                           color: Color(
//                                               ColorValues.THEME_TEXT_COLOR),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'Demet Polat',
//                                         style: TextStyle(
//                                           fontSize: 10,
//                                           fontFamily: "Regular",
//                                           fontWeight: FontWeight.w400,
//                                           color:
//                                           Color(ColorValues.BLACK_TEXT_COL),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             child: Divider(
//                               height: 2,
//                               color: Color(ColorValues.DIVIDER_COL),
//                             ),
//                           ),
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               Container(
//                                   margin: EdgeInsets.fromLTRB(20, 20, 30, 0),
//                                   child: Image.asset(
//                                     'assets/images/contact.png',
//                                     height: 21,
//                                     width: 21,
//                                   )),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'Phone',
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           fontFamily: "Regular",
//                                           fontWeight: FontWeight.w700,
//                                           color: Color(
//                                               ColorValues.THEME_TEXT_COLOR),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         '54738930',
//                                         style: TextStyle(
//                                           fontSize: 10,
//                                           fontFamily: "Regular",
//                                           fontWeight: FontWeight.w400,
//                                           color:
//                                           Color(ColorValues.BLACK_TEXT_COL),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             child: Divider(
//                               height: 2,
//                               color: Color(ColorValues.DIVIDER_COL),
//                             ),
//                           ),
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               Container(
//                                   margin: EdgeInsets.fromLTRB(20, 20, 30, 0),
//                                   child: Image.asset(
//                                     'assets/images/calendar.png',
//                                     height: 21,
//                                     width: 21,
//                                   )),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'Date of Birth',
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           fontFamily: "Regular",
//                                           fontWeight: FontWeight.w700,
//                                           color: Color(
//                                               ColorValues.THEME_TEXT_COLOR),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         '10 may 1992',
//                                         style: TextStyle(
//                                           fontSize: 10,
//                                           fontFamily: "Regular",
//                                           color:
//                                           Color(ColorValues.BLACK_TEXT_COL),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             child: Divider(
//                               height: 2,
//                               color: Color(ColorValues.DIVIDER_COL),
//                             ),
//                           ),
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               Container(
//                                   margin: EdgeInsets.fromLTRB(20, 20, 30, 0),
//                                   child: Image.asset(
//                                     'assets/images/eduction.png',
//                                     height: 21,
//                                     width: 21,
//                                   )),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'Education',
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           fontFamily: "Regular",
//                                           fontWeight: FontWeight.w700,
//                                           color: Color(
//                                               ColorValues.THEME_TEXT_COLOR),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'XYZ',
//                                         style: TextStyle(
//                                           fontSize: 10,
//                                           fontFamily: "Regular",
//                                           color:
//                                           Color(ColorValues.BLACK_TEXT_COL),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             child: Divider(
//                               height: 2,
//                               color: Color(ColorValues.DIVIDER_COL),
//                             ),
//                           ),
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               Container(
//                                   margin: EdgeInsets.fromLTRB(20, 20, 30, 0),
//                                   child: Image.asset(
//                                     'assets/images/location.png',
//                                     height: 21,
//                                     width: 21,
//                                   )),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'Address',
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           fontFamily: "Regular",
//                                           fontWeight: FontWeight.w700,
//                                           color: Color(
//                                               ColorValues.THEME_TEXT_COLOR),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                       child: Text(
//                                         'bla bla',
//                                         style: TextStyle(
//                                           fontSize: 10,
//                                           fontFamily: "Regular",
//                                           color:
//                                           Color(ColorValues.BLACK_TEXT_COL),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             child: Divider(
//                               height: 2,
//                               color: Color(ColorValues.DIVIDER_COL),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.symmetric(
//                                 vertical: 30, horizontal: 40),
//                             height: 40,
//                             width: MediaQuery.of(context).size.width,
//                             decoration: BoxDecoration(
//                               color: const Color(ColorValues.THEME_TEXT_COLOR),
//                             ),
//                             child: TextButton(
//                               onPressed: () {},
//                               child: Text(
//                                 'Save',
//                                 style: TextStyle(
//                                     color: Color(ColorValues.WHITE),
//                                     fontSize: 14),
//                               ),
//                             ),
//                           )
//                         ],
//                       ))
//                 ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   void changeProfilePic() {
//     print("camera clicked");
//   }
// }
