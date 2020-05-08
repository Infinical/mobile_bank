import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobilebank/pages/lets_get_started.dart';
import '../../resources/registration_provider.dart';

class Registration extends StatefulWidget {
  static const String id = 'registration';
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();

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
                      icon: FaIcon(
                        FontAwesomeIcons.angleLeft,
                        size: MediaQuery.of(context).size.height * 0.05,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, LetsGetStarted.id);
                      }),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    'Registration',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                      "Enter your mobile number.We'll send an OTP to verify later"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _phoneController,
                            decoration: InputDecoration(
                                labelText: "Enter your phone number"),
                            keyboardType: TextInputType.phone,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter your phone number';
                              }
                              return null;
                            },
                          )
                        ],
                      )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.45),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: () {
                        register(_phoneController.text);
                      },
                      child: Text("Start Using",
                          style: TextStyle(color: Colors.white)),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.03,
                          bottom: MediaQuery.of(context).size.width * 0.03),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    "By clicking start you agree to our Privacy Policy and Terms",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )));
  }
}
