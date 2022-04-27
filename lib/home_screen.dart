import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privacyx/google_signin.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected_one = true;
  bool isSelected_two = false;
  bool isSelected_three = false;
  PageController controller = PageController();
  int select = 0;
  List dev = [
    "Tom & Jerry\nLove Forever",
    "One of you\nis Jerry",
    "Other one\nis Tom"
  ];
  List tom = ["assets/tom1.png", "assets/jerry1.png", "assets/tom2.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F3F5),
      body: SafeArea(
          child: PageView.builder(
              onPageChanged: (v) {
                select = v;
                setState(() {});
              },
              controller: controller,
              itemCount: dev.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        // height: MediaQuery.of(context).size.height/2 - 10,

                        // child: SvgPicture.asset("assets/image 1.svg"),
                        child: Image.asset("${tom[i]}"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 7),
                                blurRadius: 28,
                                color: Color(0XFF000000).withOpacity(0.03),
                              )
                            ],
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Text(
                              dev[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xff1F1F1F)),
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            Text(
                              "Enjoy Chate with your Love",
                              style: TextStyle(
                                  color: Color(0xffB0B8BF), fontSize: 14),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Container(
                                  height: 6,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: select == 0
                                        ? Color(0xff1479FF)
                                        : Color(0xffDCDFE3),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 6,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: select == 1
                                        ? Color(0xff1479FF)
                                        : Color(0xffDCDFE3),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 6,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: select == 2
                                        ? Color(0xff1479FF)
                                        : Color(0xffDCDFE3),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                if (select == 2) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Google_signin(),
                                    ),
                                  );
                                } else {
                                  controller.nextPage(
                                      duration: Duration(milliseconds: 700),
                                      curve: Curves.easeIn);
                                }
                              },
                              child: Container(
                                // height: 50,
                                // width: 50,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff1479FF),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 8),
                                      blurRadius: 22,
                                      color: Color(0XFF9DCCF6),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  "assets/Icon - Right.svg",
                                  fit: BoxFit.fill,
                                  height: 35,
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
