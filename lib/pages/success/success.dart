import 'package:flutter/material.dart';
import 'package:mobilebank/pages/home_page/home_page.dart';

class Success extends StatelessWidget {
  static const String id = 'success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.12,
                    right: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1),
                child: Image.asset("images/success.png"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Success",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.04),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  'You have successfully registered in our app and can start using it',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () {
                    // register(_phoneController.text);
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  child: Text("Start Using",
                      style: TextStyle(color: Colors.white)),
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.03,
                      bottom: MediaQuery.of(context).size.width * 0.03),
                ),
              ),
            ],
          ))),
    );
  }
}
