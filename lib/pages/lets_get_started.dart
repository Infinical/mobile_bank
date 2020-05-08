import 'package:flutter/material.dart';
import 'package:mobilebank/pages/registration_page.dart';

class LetsGetStarted extends StatelessWidget {
  static const String id = 'lets_get_started';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.12,
                right: MediaQuery.of(context).size.width * 0.1,
                left: MediaQuery.of(context).size.width * 0.1),
            child: Image.asset("images/lets_get_started.png"),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            "Lets get started",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05,
                left: MediaQuery.of(context).size.width * 0.05),
            child: Text(
              'Never a better time than now to start thinking about how you manage all your finances with ease',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, Registration.id);
              },
              child: Text(
                'Create Account',
                style: TextStyle(color: Colors.white),
              ),
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.03,
                  bottom: MediaQuery.of(context).size.width * 0.03,
                  left: MediaQuery.of(context).size.width * 0.3,
                  right: MediaQuery.of(context).size.width * 0.3)),
          FlatButton(
              onPressed: () {},
              child: Text(
                'Login to Account',
                style: TextStyle(color: Color(0xFF2573D5)),
              ),
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.03,
                  bottom: MediaQuery.of(context).size.width * 0.03,
                  left: MediaQuery.of(context).size.width * 0.3,
                  right: MediaQuery.of(context).size.width * 0.3))
        ],
      ),
    );
  }
}
