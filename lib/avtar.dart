import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:privacyx/home.dart';

import 'main_screen.dart';

class Avtar extends StatefulWidget {
  const Avtar({Key? key}) : super(key: key);

  @override
  State<Avtar> createState() => _AvtarState();
}

class _AvtarState extends State<Avtar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF2F3F5),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image.asset("assets/tom&jerry.png"),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const Text(
                  "Choose your avatar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff1F1F1F)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 22,
                            color: Color(0XFF9DCCF6).withOpacity(0.25),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Text(
                          "TOM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff1F1F1F)),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff617581),
                                    Color(0xffB2B9BF)
                                  ]),
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                            "assets/Icon -Next.svg",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return CallScreen();
                      },
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 22,
                            color: Color(0XFF9DCCF6).withOpacity(0.25),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Text(
                          "JERRY",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff1F1F1F)),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xffC08129),
                                    Color(0xffF1CD85)
                                  ]),
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                            "assets/Icon -Next.svg",
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      )),
    );
  }
}
