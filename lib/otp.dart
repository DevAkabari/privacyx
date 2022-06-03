// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:privacyx/avtar.dart';
//
//
// class Otp extends StatefulWidget {
//   const Otp({Key? key}) : super(key: key);
//
//   @override
//   State<Otp> createState() => _OtpState();
// }
//
// class _OtpState extends State<Otp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffF2F3F5),
//       body:
//       Center(
//         child:
//         Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Spacer(),
//           Text(
//             "Verify Phone number",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//                 color: Color(0xff1F1F1F)),
//             textAlign: TextAlign.center,
//           ),
//           Spacer(),
//           SizedBox(
//             height: 5,
//           ),
//           OtpTextField(
//             numberOfFields: 6,
//             borderColor: Colors.transparent,
//             focusedBorderColor: Color(0xff1479FF),
//             disabledBorderColor: Colors.transparent,
//             showFieldAsBox:
//                 true, //set to true to show as box or false to show as dash
//             onCodeChanged: (String code) {
//               //handle validation or checks here
//             },
//             onSubmit: (String verificationCode) {
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text("Verification Code"),
//                       content: Text('Code entered is $verificationCode'),
//                     );
//                   });
//             }, // end onSubmit
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Text(
//             "you didn't receive the code?",
//             style: TextStyle(color: Color.fromARGB(255, 170, 170, 170)),
//           ),
//           GestureDetector(
//             onTap: (() {
//               print("Sent otp again");
//             }),
//             child: Text(
//               "Send again",
//               style: TextStyle(color: Color(0xff1479FF)),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Visibility(child: TextField(
//             controller: otpController,
//             decoration: InputDecoration(),
//             keyboardType: TextInputType.number,
//           ),visible: otpVisibility,),
//
//           SizedBox(
//             height: 20,
//           ),
//           GestureDetector(
//             onTap: (() {
//               onPressed: () {
//                 if(otpVisibility){
//                   verifyOTP();
//                 }
//                 else {
//                   loginWithPhone();
//                 }
//               },
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (context) => Avtar(),
//               //   ),
//               // );
//             }),
//             child: Container(
//               height: 60,
//               width: double.infinity,
//               margin: EdgeInsets.symmetric(horizontal: 50),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Send OTP",
//                     style: TextStyle(
//                       color: Color(0xff1479FF),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 7),
//                     blurRadius: 28,
//                     color: Color.fromARGB(255, 0, 81, 255).withOpacity(0.03),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Spacer(),
//           Spacer(),
//           Spacer(),
//           Spacer()
//         ]),
//       ),
//
//     );
//
//   }
//   void loginWithPhone() async {
//     auth.verifyPhoneNumber(
//       phoneNumber: phoneController.text,
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await auth.signInWithCredential(credential).then((value){
//           print("You are logged in successfully");
//         });
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         print(e.message);
//       },
//       codeSent: (String verificationId, int? resendToken) {
//         otpVisibility = true;
//         verificationID = verificationId;
//         setState(() {});
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {
//
//       },
//     );
//   }
//
//   void verifyOTP() async {
//
//     PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);
//
//     await auth.signInWithCredential(credential).then((value){
//       print("You are logged in successfully");
//       Fluttertoast.showToast(
//           msg: "You are logged in successfully",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0
//       );
//     });
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:privacyx/home.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({Key? key}) : super(key: key);

  @override
  _LoginWithPhoneState createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  TextEditingController phoneController =
      TextEditingController(text: "+917228845817");
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F3F5),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
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
            SvgPicture.asset(
              "assets/phone.svg",
              height: 150,
            ),
            Spacer(),
            // TextField(
            //   controller: phoneController,
            //   decoration: InputDecoration(labelText: "Phone number"),
            //   keyboardType: TextInputType.phone,
            // ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "   Phone",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 46, 46, 46)),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              // keyboardType: TextInputType.number,
            ),

            // Visibility(
            //   child: TextField(
            //     controller: otpController,
            //     decoration: InputDecoration(),
            //     keyboardType: TextInputType.number,
            //   ),
            //   visible: otpVisibility,
            // ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "   OTP",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 46, 46, 46)),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: otpController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              // decoration: InputDecoration(
              //   focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(10.0),
              //     borderSide: const BorderSide(
              //       color: Colors.transparent,
              //     ),
              //   ),
              //   enabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(10.0),
              //     borderSide: const BorderSide(
              //       color: Colors.transparent,
              //     ),
              //   ),
              //   filled: true,
              //   fillColor: const Color.fromARGB(255, 255, 255, 255),
              // ),
              // keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     if (otpVisibility) {
            //       verifyOTP();
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const Home(),
            //         ),
            //       );
            //     } else {
            //       loginWithPhone();
            //     }
            //   },
            //   child: Text(otpVisibility ? "Verify" : "Login"),
            // ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
                // if (otpVisibility) {
                //   verifyOTP();
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Home(),
                //     ),
                //   );
                // } else {
                //   loginWithPhone();
                // }
                ;
              }),
              child: Container(
                height: 60,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                      offset: const Offset(0, 7),
                      blurRadius: 28,
                      color: const Color.fromARGB(255, 0, 81, 255)
                          .withOpacity(0.03),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully -------------------------");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then((value) {
      print("You are logged in successfully");
      Fluttertoast.showToast(
          msg: "You are logged in successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }
}
