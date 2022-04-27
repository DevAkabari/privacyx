import 'package:flutter/material.dart';
import 'package:privacyx/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: Color(0xff1479FF)),
      ),
      home: const HomeScreen(),
    );
  }
}
