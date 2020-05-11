import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: <Color>[
                          Colors.blue,
                          Color(0xFF29304D),
                        ],
                        tileMode: TileMode.repeated)
                    .createShader(bounds);
              },
              child: Icon(
                LineAwesomeIcons.home,
                color: Colors.grey,
              ),
            ),
            icon: Icon(LineAwesomeIcons.home),
            title: Text('Home')),
        // BottomNavigationBarItem(
        //     icon: FaIcon(FontAwesomeIcons.home), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.credit_card), title: Text('Cards')),
        BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.map), title: Text('Map')),
        BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user), title: Text('Profile')),
      ]),
    );
  }
}