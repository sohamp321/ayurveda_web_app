import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Choose user type",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Admin",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    )),

                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Physician",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          
                          color: Colors.white,
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ))
              ],
            ),
            Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: 
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _userNameController,
                          decoration: InputDecoration(labelText: "Username"),
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return "Please enter your user name";
                            }
                            return null;
                          },
                        ),
                  
                        ElevatedButton(onPressed: (){
                          if(_formKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("button pressed")));
                          }
                        }, child: Text("Submit")),
                      ],
                    )
                    
                    ),
                )
              ],
            )
          
          ],
        ),
      ),
    );
  }
}
