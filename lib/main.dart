import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:privacyx/chat_screen.dart';
import 'package:privacyx/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: Color(0xff1479FF)),
      ),
      home: MyHomePage(),
    );
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
