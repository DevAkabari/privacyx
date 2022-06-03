import 'package:flutter/material.dart';

class Theme1 extends StatefulWidget {
  const Theme1({Key? key}) : super(key: key);

  @override
  State<Theme1> createState() => _Theme1State();
}

class _Theme1State extends State<Theme1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1479FF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("THEMES"),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffEBFCFE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/newspaper.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "News",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/camera.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Camera",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffEBF6FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/game-console.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Game",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffFFF6E9),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/clock-2.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Clock",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffEBFCFE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/newspaper.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "News",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffEBFCFE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/newspaper.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "News",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffEBFCFE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/newspaper.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "News",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                      decoration: BoxDecoration(
                          color: Color(0xffEBFCFE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/newspaper.png',
                              height: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "News",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
