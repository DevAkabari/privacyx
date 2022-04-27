import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Avtar extends StatefulWidget {
  const Avtar({Key? key}) : super(key: key);

  @override
  State<Avtar> createState() => _AvtarState();
}

class _AvtarState extends State<Avtar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F3F5),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image.asset("assets/tom&jerry.png"),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Text(
                  "Choose your avatar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff1F1F1F)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Text(
                          "TOM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff1F1F1F)),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
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
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Text(
                          "JERRY",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff1F1F1F)),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
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
