import 'dart:ui';

import 'package:ayurveda_app/pages/dashboard.dart';
import 'package:ayurveda_app/pages/patient_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();
    final _userNameController = TextEditingController();
    final _passwordController = TextEditingController();

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/background-7.jpg"), // Use AssetImage for local images
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              height: vh * 0.6,
              width: vw * 0.6,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black, width: 2),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Row(
                      children: [
                        Container(
                          width: vw * 0.2,
                          height: vh * 0.6,
                          color: Color(0xffCFE1B9).withOpacity(0.7),
                          child: Column(
                            children: [
                              SizedBox(
                                height: vh * 0.01,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FittedBox(
                                  child: Text(
                                    "Welcome to",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15, bottom: 15),
                                child: FittedBox(
                                  child: Text(
                                    "Ayurveda Medication app",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: vh * 0.05,
                              ),
                              Image.asset(
                                'images/logo.png',
                                width: 100,
                              ),
                              SizedBox(
                                height: vh * 0.05,
                              ),
                              Text(
                                "Signing in as :",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: vh * 0.02,
                              ),
                              Container(
                                  height: vh * 0.05,
                                  width: vw * 0.15,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Admin",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff87986a),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        )),
                                  )),
                              SizedBox(
                                height: vh * 0.005,
                              ),
                              Container(
                                  height: vh * 0.05,
                                  width: vw * 0.15,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Physician",
                                        style: TextStyle(color: Colors.black)),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff87986a),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                        )),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          width: vw * 0.4,
                          height: vh * 0.6,
                          color: Color(0xffe9f5db).withOpacity(0.3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Credentials",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: vw * 0.3,
                                      child: TextFormField(
                                        controller: _userNameController,
                                        decoration: InputDecoration(
                                            labelText: 'Username',
                                            labelStyle:
                                                TextStyle(color: Colors.black)),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your username';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            20), // Add some space between fields
                                    Container(
                                      width: vw * 0.3,
                                      child: TextFormField(
                                        controller: _passwordController,
                                        decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle:
                                                TextStyle(color: Colors.black)),
                                        obscureText: true,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your password';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    SizedBox(height: vh * 0.05),

                                    Container(
                                      width: 200,
                                      height: 50,
                                      // color: Color(0xff718355),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xff718355),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            textStyle:
                                                TextStyle(color: Colors.black),
                                          ),
                                          onPressed: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // Check if the username and password are correct
                                              if (_userNameController.text ==
                                                      "abcd" &&
                                                  _passwordController.text ==
                                                      "123") {
                                                // If the credentials are correct, navigate to the patient details page
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PhysicianDashboard()),
                                                );
                                              } else {
                                                // If the credentials are incorrect, display an error message
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      content: Text(
                                                          'Invalid username or password')),
                                                );
                                              }
                                            }
                                          },
                                          child: Text(
                                            "Submit",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
        )
      ],
    );
  }
}
