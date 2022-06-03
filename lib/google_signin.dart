import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privacyx/otp.dart';
import 'package:privacyx/phone.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GooglesignIn extends StatefulWidget {
  // const GooglesignIn({Key? key}) : super(key: key);

  @override
  State<GooglesignIn> createState() => _GooglesignInState();
}

class _GooglesignInState extends State<GooglesignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F3F5),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Join Now",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xff1F1F1F)),
            textAlign: TextAlign.center,
          ),
          const Text(
            "If you don’t have an account the account\nautomatically created or sign in",
            style: TextStyle(color: Color(0xffB0B8BF), fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (() {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const Phone(),
              //   ),
              // );
              signInWithGoogle(context: context);
            }),
            child: Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons8-google 1.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
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
                    offset: const Offset(0, 7),
                    blurRadius: 28,
                    color:
                        const Color.fromARGB(255, 0, 81, 255).withOpacity(0.03),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      print("-------------stape one------------");
      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginWithPhone(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          print("-------------$e------------");
          // handle the error here
        } else if (e.code == 'invalid-credential') {
          // handle the error here
          print("-------------$e------------");
        }
      } catch (e) {
        // handle the error here
        print("-------------$e------------");
      }
    }

    return user;
  }
}
