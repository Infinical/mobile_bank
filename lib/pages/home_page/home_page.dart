import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:mobilebank/pages/widgets/bottom_app_bar.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
    );
  }
}
