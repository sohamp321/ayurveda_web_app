import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ayurveda_app/components/textfield.dart';


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
    final vh = MediaQuery.of(context).size.height;
    final vw = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: vh*0.5,
        width: vw*0.4,
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
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: 
                  Container(
                    height: vh*0.25,
                    width: vh*0.25,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SimpleTextField(
                            textEditingController: _userNameController,
                            labelText: "Username",
                            textColor: Colors.white,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return false;
                              }
                              return true;
                            },
                          ),
                          Spacer(),
                          SimpleTextField(
                            textEditingController: _passwordController,
                            labelText: "Password",
                            textColor: Colors.white,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return false;
                              }
                              return true;
                            },
                          ),
                          SizedBox(
                            height: vh*0.01,
                          ),
                          ElevatedButton(onPressed: (){
                            if(_formKey.currentState!.validate()){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("button pressed")));
                            }
                          }, child: Text("Submit")),
                        ],
                      )
                      
                      ),
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
