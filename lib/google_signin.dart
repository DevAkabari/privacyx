import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privacyx/phone.dart';

class Google_signin extends StatefulWidget {
  const Google_signin({Key? key}) : super(key: key);

  @override
  State<Google_signin> createState() => _Google_signinState();
}

class _Google_signinState extends State<Google_signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Join Now",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xff1F1F1F)),
            textAlign: TextAlign.center,
          ),
          Text(
            "If you don’t have an account the account\nautomatically created or sign in",
            style: TextStyle(color: Color(0xffB0B8BF), fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Phone(),
                ),
              );
            }),
            child: Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons8-google 1.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                      color: Color(0xff253274),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 7),
                    blurRadius: 28,
                    color: Color.fromARGB(255, 0, 81, 255).withOpacity(0.03),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
