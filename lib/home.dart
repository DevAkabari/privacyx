import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matcher/matcher.dart';
import 'package:privacyx/theme.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFF2F3F5),
        appBar: AppBar(
          backgroundColor: Color(0XFFF2F3F5),
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
          titleSpacing: 30.0,
          centerTitle: false,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(
                    color: Color.fromARGB(255, 62, 62, 62), fontSize: 12.0),
              ),
              Text(
                "TOM",
                style: TextStyle(
                    color: Color(0xff2F80ED),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                print('Click Profile Pic');
              },
              child: FittedBox(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/wp7650067-aesthetic-tom-and-jerry-wallpapers.jpg',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "CHOOSE A PLAN",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                ),
                Text(
                  "Select the offer the best suits your need".toUpperCase(),
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                  decoration: BoxDecoration(
                    color: Color(0xff1479FF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(
                          //     color: Color(0xff1479FF).withOpacity(0.1), width: 7),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage("assets/123.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Monthly".toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xff1479FF)),
                                ),
                                Text(
                                  "Pay for a full month".toUpperCase(),
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Rs 500",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff1479FF)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            transform: Matrix4.skew(0.8, 0.0),
                            height: 40,
                            width: 40,
                            color: Color(0xffFFBE3D),
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 20, right: 5),
                              transform: Matrix4.skew(-0.8, 0.0),
                              child: SvgPicture.asset(
                                "assets/fi-rr-diamond.svg",
                              ),
                            ),
                          ))
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                  decoration: BoxDecoration(
                    color: Color(0xff1479FF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(
                          //     color: Color(0xff1479FF).withOpacity(0.1), width: 7),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage("assets/123.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Yearly".toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xff1479FF)),
                                ),
                                Text(
                                  "Pay for a full year".toUpperCase(),
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Rs 780",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff1479FF)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            transform: Matrix4.skew(0.8, 0.0),
                            height: 40,
                            width: 40,
                            color: Color(0xffFFBE3D),
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 20, right: 5),
                              transform: Matrix4.skew(-0.8, 0.0),
                              child: SvgPicture.asset(
                                "assets/fi-rr-diamond.svg",
                              ),
                            ),
                          ))
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Tchat.png",
                      height: 70,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jerry".toUpperCase(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1479FF),
                          ),
                        ),
                        Text("Hello !!!"),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Color(0xff1479FF),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "07:48 Pm",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff8E8E8E)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/fi-rr-angle-right.svg")
                  ],
                ),
                Divider(),
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Theme1()));
                  }),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/theme-park.png",
                        height: 70,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Themes".toUpperCase(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff1479FF),
                            ),
                          ),
                          Text("Set your own app theme"),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset("assets/fi-rr-angle-right.svg")
                    ],
                  ),
                ),
              ]),
        ));
  }
}
