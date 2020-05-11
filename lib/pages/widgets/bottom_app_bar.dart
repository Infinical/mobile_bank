import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
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
              LineAwesomeIcons.credit_card,
              color: Colors.grey,
            ),
          ),
          icon: Icon(LineAwesomeIcons.credit_card),
          title: Text('Cards')),
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
              LineAwesomeIcons.map,
              color: Colors.grey,
            ),
          ),
          icon: Icon(LineAwesomeIcons.map),
          title: Text('Map')),
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
              LineAwesomeIcons.user,
              color: Colors.grey,
            ),
          ),
          icon: Icon(LineAwesomeIcons.user),
          title: Text('Profile')),
    ]);
  }
}
