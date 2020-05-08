import 'package:flutter/material.dart';
import 'package:mobilebank/pages/lets_get_started.dart';

import 'pages/registration/registration_page.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color =
{
50:Color.fromRGBO(41, 48, 77, .1),
100:Color.fromRGBO(41, 48, 77, .2),
200:Color.fromRGBO(41, 48, 77, .3),
300:Color.fromRGBO(41, 48, 77, .4),
400:Color.fromRGBO(41, 48, 77, .5),
500:Color.fromRGBO(41, 48, 77, .6),
600:Color.fromRGBO(41, 48, 77, .7),
700:Color.fromRGBO(41, 48, 77, .8),
800:Color.fromRGBO(41, 48, 77, .9),
900:Color.fromRGBO(41, 48, 77, 1),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  MaterialColor colorCustom = MaterialColor(0xFF29304D, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Bank App',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Color(0xFFF7F9FC),
          primarySwatch: colorCustom,
          buttonTheme: ButtonThemeData(
              buttonColor: Color(0xFF2573D5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)))),
      home: LetsGetStarted(),
      initialRoute: LetsGetStarted.id,
      routes: {
        LetsGetStarted.id: (context) => LetsGetStarted(),
        Registration.id: (context) => Registration()
      },
    );
  }
}
