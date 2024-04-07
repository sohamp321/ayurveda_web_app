import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


//Right Pane of the login page

class userSelection extends StatelessWidget {
  const userSelection({
    super.key,
    required this.vw,
    required this.vh,
  });

  final double vw;
  final double vh;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: vw * 0.2,
      height: vh * 0.6,
      color: Color(0xffE9F5DB).withOpacity(0.5),
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
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Text(
                "Ayurveda Medication app",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
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
              height: 40,
              width: 300,
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
              height: 40,
              width: 300,
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
    );
  }
}

//Left Pane of the login page
class loginInfo extends StatelessWidget {
  const loginInfo({
    super.key,
    required this.vw,
    required this.vh,
    required GlobalKey<FormState> formKey,
    required TextEditingController userNameController,
    required TextEditingController passwordController,
  }) : _formKey = formKey, _userNameController = userNameController, _passwordController = passwordController;

  final double vw;
  final double vh;
  final GlobalKey<FormState> _formKey;
  final TextEditingController _userNameController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: vw * 0.4,
      height: vh * 0.6,
      // color: Color(0xffe9f5db).withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Create new user",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
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
                SizedBox(
                    height: vh *
                        0.05), // Add some space at the bottom
    
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
                      onPressed: () {},
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
    );
  }
}