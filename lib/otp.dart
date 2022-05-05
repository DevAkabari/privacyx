import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:privacyx/avtar.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Spacer(),
          Text(
            "Verify Phone number",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xff1F1F1F)),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          SizedBox(
            height: 5,
          ),
          // TextFormField(
          //   decoration: InputDecoration(
          //     focusedBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10.0),
          //       borderSide: BorderSide(
          //         color: Colors.transparent,
          //       ),
          //     ),
          //     enabledBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10.0),
          //       borderSide: BorderSide(
          //         color: Colors.transparent,
          //       ),
          //     ),
          //     filled: true,
          //     fillColor: Color.fromARGB(255, 255, 255, 255),
          //   ),
          //   keyboardType: TextInputType.number,
          // ),
          OtpTextField(
            numberOfFields: 6,
            borderColor: Colors.transparent,
            focusedBorderColor: Color(0xff1479FF),
            disabledBorderColor: Colors.transparent,
            showFieldAsBox:
                true, //set to true to show as box or false to show as dash
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "you didn't receive the code?",
            style: TextStyle(color: Color.fromARGB(255, 170, 170, 170)),
          ),
          GestureDetector(
            onTap: (() {
              print("Sent otp again");
            }),
            child: Text(
              "Send again",
              style: TextStyle(color: Color(0xff1479FF)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Avtar(),
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
                    offset: Offset(0, 7),
                    blurRadius: 28,
                    color: Color.fromARGB(255, 0, 81, 255).withOpacity(0.03),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer()
        ]),
      ),
    );
  }
}
