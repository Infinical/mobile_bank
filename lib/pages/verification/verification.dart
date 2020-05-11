import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:mobilebank/pages/personal_info/personal_info.dart';
import 'package:mobilebank/pages/registration/registration_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatefulWidget {
  static const String id = 'verification';
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final TextEditingController pinController = TextEditingController();
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                IconButton(
                    icon: Icon(
                      LineAwesomeIcons.angle_left,
                      size: MediaQuery.of(context).size.height * 0.05,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Registration.id);
                    }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'Verification',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text("Enter Verification code we sent to +254789567432"),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                PinCodeTextField(
                    length: 6,
                    obsecureText: true,
                  
                    backgroundColor: Color(0xFFF7F9FC),
                    onChanged: (value) {
                      print(value);
                    }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.55),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    onPressed: () {
                      // register(_phoneController.text);
                      Navigator.pushNamed(context, PersonalInfo.id);
                    },
                    child: Text("Continue",
                        style: TextStyle(color: Colors.white)),
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.03,
                        bottom: MediaQuery.of(context).size.width * 0.03),
                  ),
                ),
              ],
            ))));
  }
}
