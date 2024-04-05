import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height,
            color: Color(0xff97a97c),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1)),
                Text(
                  "Welcome to",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "the Ayurveda Medication app",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Image.asset(
                  'images/logo.png',
                  width: 100,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text("Signing in as :", style: TextStyle(fontSize: 18),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Admin", style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffb5c99a)),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Physician" , style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffb5c99a)),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffe9f5db).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Color.fromARGB(58, 230, 230, 230),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        // border: Border.all(color: Color.fromARGB(255, 197, 246, 37), width: 8)
                        ),
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      children: [
                        Text(
                          "Create new user",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: TextFormField(
                                  controller: _userNameController,
                                  decoration: InputDecoration(
                                    labelText: 'Username',
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your username';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                  height: 20), // Add some space between fields
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                  ),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.05), // Add some space at the bottom

                              Container(
                                width: 200,
                                height: 50,
                                // color: Color(0xff718355),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff718355),
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                    },
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
