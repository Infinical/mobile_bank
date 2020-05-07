import 'package:flutter/material.dart';
import 'package:mobilebank/pages/lets_get_started.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mobile Bank App',
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: Color(0xFFF7F9FC),
            buttonTheme: ButtonThemeData(
                buttonColor: Color(0xFF2573D5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)))),
        home: LetsGetStarted());
  }
}
