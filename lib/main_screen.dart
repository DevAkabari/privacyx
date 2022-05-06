import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/callbackground.png"),
                  fit: BoxFit.fill)),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.keyboard_backspace,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.keyboard_backspace,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: Get.width / 3,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0, // soften the shadow
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 10  horizontally
                              1.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage("assets/callbackground.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text(
                    "Jerry",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      "08:30",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.blue),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white70,
                            child: Icon(
                              Icons.volume_up,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white70,
                            child: Icon(
                              Icons.keyboard_voice,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white70,
                            child: Icon(
                              Icons.video_call,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white70,
                            child: Icon(
                              Icons.sync,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (context) {
          //     return const ChatPage();
          //   },
          // ));
        },
        child: const Icon(
          Icons.call,
          color: Colors.white,
        ), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.blue,
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 5,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: const [
      //       Padding(
      //         padding: EdgeInsets.symmetric(vertical: 8),
      //         child: CircleAvatar(
      //             radius: 20,
      //             backgroundColor: Colors.white70,
      //             child: Icon(
      //               Icons.volume_up,
      //               color: Colors.black,
      //             )),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(vertical: 8),
      //         child: CircleAvatar(
      //             radius: 20,
      //             backgroundColor: Colors.white70,
      //             child: Icon(
      //               Icons.keyboard_voice,
      //               color: Colors.black,
      //             )),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(vertical: 8),
      //         child: CircleAvatar(
      //             radius: 20,
      //             backgroundColor: Colors.white70,
      //             child: Icon(
      //               Icons.video_call,
      //               color: Colors.black,
      //             )),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(vertical: 8),
      //         child: CircleAvatar(
      //             radius: 20,
      //             backgroundColor: Colors.white70,
      //             child: Icon(
      //               Icons.sync,
      //               color: Colors.black,
      //             )),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
