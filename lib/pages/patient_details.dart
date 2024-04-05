import 'package:ayurveda_app/pages/complaints.dart';
import 'package:ayurveda_app/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:intl/intl.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  final _formkey = GlobalKey<FormState>();
  final _patientName = TextEditingController();
  final _uhid = TextEditingController();
  final _date = TextEditingController();
  final _patientOccupation = TextEditingController();
  final _pastillness = TextEditingController();
  final _address = TextEditingController();
  final _medicalHistory = TextEditingController();

  late DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        initialDate: _selectedDate ?? DateTime.now());

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _date.text = DateFormat.yMMMd().format(_selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.015,
                  top: 10,
                  bottom: 10,
                  right: 10),
              child: ProfilePicture(
                name: 'Physician Name',
                radius: 25,
                fontsize: 18,
                random: true,
              ),
            ),
            Text(
              "Physician Name",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Patient Details ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffe9f5db).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xffe9f5db)),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        // Your existing form fields here
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: _patientName,
                                      decoration: InputDecoration(
                                          labelText: "Patient Name"),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter patient name";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    // height: 100,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: GestureDetector(
                                      onTap: () {
                                        _selectDate(context);
                                      },
                                      child: AbsorbPointer(
                                        child: TextFormField(
                                          controller: _date,
                                          decoration: InputDecoration(
                                              labelText: "Date of Birth",
                                              suffixIcon:
                                                  Icon(Icons.calendar_today)),
                                          // enabled: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: _pastillness,
                                      decoration: InputDecoration(
                                          labelText: "Past Illness"),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter patient past illness";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: _uhid,
                                      decoration:
                                          InputDecoration(labelText: "UHID"),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter patient uhid";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: _patientOccupation,
                                      decoration: InputDecoration(
                                          labelText: "Patient Occupation"),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter patient occupation";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: _address,
                                      decoration: InputDecoration(
                                          labelText: "Patient address"),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter patient address";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.475,
                          child: TextFormField(
                            controller: _medicalHistory,
                            decoration:
                                InputDecoration(labelText: "Medical History"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter patient medical history";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  Container(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child:
                            Text("Back", style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffb5c99a)),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Complaints(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var curve = Curves.ease;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ));
                      },
                      child:
                          Text("Next", style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffb5c99a)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
