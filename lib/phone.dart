import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privacyx/otp.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const     Spacer(),
          const     Text(
            "Verify Phone number",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xff1F1F1F)),
            textAlign: TextAlign.center,
          ),
          const   Spacer(),
          SvgPicture.asset(
            "assets/phone.svg",
            height: 150,
          ),
          const    Spacer(),
          Container(
            padding: const  EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                const   Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 46, 46, 46)),
                    textAlign: TextAlign.left,
                  ),
                ),
                const    SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    filled: true,
                    fillColor:const Color.fromARGB(255, 255, 255, 255),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          const  SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>const Otp(),
                ),
              );
            }),
            child: Container(
              height: 60,
              width: double.infinity,
              margin:const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Text(
                    "Send OTP",
                    style: TextStyle(
                      color: Color(0xff1479FF),
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
                    offset:const Offset(0, 7),
                    blurRadius: 28,
                    color:const Color.fromARGB(255, 0, 81, 255).withOpacity(0.03),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          const   Spacer(),
          const  Spacer(),
          const  Spacer()
        ]),
      ),
    );
  }
}
