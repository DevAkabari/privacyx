import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:privacyx/chat_screen.dart';
import 'package:privacyx/home_screen.dart';
import 'package:privacyx/providers/auth_provider.dart';
import 'package:privacyx/providers/chat_provider.dart';
import 'package:privacyx/providers/home_provider.dart';
import 'package:privacyx/providers/profile_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(
    prefs: prefs,
  ));
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  MyApp({Key? key, required this.prefs}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthProvider>(
              create: (_) => AuthProvider(
                  firebaseFirestore: firebaseFirestore,
                  prefs: prefs,
                  googleSignIn: GoogleSignIn(),
                  firebaseAuth: FirebaseAuth.instance)),
          Provider<ProfileProvider>(
              create: (_) => ProfileProvider(
                  prefs: prefs,
                  firebaseFirestore: firebaseFirestore,
                  firebaseStorage: firebaseStorage)),
          Provider<HomeProvider>(
              create: (_) =>
                  HomeProvider(firebaseFirestore: firebaseFirestore)),
          Provider<ChatProvider>(
              create: (_) => ChatProvider(
                  prefs: prefs,
                  firebaseStorage: firebaseStorage,
                  firebaseFirestore: firebaseFirestore))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Raleway',
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            textSelectionTheme:
                TextSelectionThemeData(cursorColor: Color(0xff1479FF)),
          ),
          home: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 800),
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: HomeScreen(),
            );
          },
          transitionsBuilder: (context, ani1, ani2, child) {
            final start = 0.0;
            final end = 1.0;
            final tween = Tween(begin: start, end: end);
            final fade = ani1.drive(tween);
            return FadeTransition(
              opacity: fade,
              child: HomeScreen(),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 70),
        color: Color(0xff1479FF),
        child: SvgPicture.asset(
          "assets/privacyx.svg",
        ));
  }
}
