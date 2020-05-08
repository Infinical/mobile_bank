import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobilebank/pages/registration/registration_page.dart';
import 'package:mobilebank/pages/success/success.dart';

class PersonalInfo extends StatefulWidget {
  static const String id = 'personal_info';
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final _formKey = GlobalKey<FormState>();
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
                      Navigator.pushNamed(context, Registration.id);
                    }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'Personal Information',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text("Enter your details"),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: "Enter your email"),
                          keyboardType: TextInputType.emailAddress,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter your email address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Enter your Name and Surname"),
                          keyboardType: TextInputType.text,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: "Date of Birth"),
                          keyboardType: TextInputType.datetime,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter your date of birth';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          obscureText: true,
                          decoration:
                              InputDecoration(labelText: "Enter your Password"),
                          keyboardType: TextInputType.visiblePassword,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.20),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            onPressed: () {
                              // register(_phoneController.text);
                              Navigator.pushNamed(context, Success.id);
                            },
                            child: Text("Continue",
                                style: TextStyle(color: Colors.white)),
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width * 0.03,
                                bottom:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ),
                      ],
                    ))
              ]))),
    );
  }
}
