import 'dart:ui';

import 'package:ayurveda_app/pages/aama_lakshana_assessment/ala_page.dart';
import 'package:ayurveda_app/pages/create_patient/components/investigations.dart';
import 'package:ayurveda_app/pages/create_patient/components/poorvakarma.dart';

import 'package:ayurveda_app/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:intl/intl.dart';

import '../components/widgets.dart';

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

  Map<String, bool?> _statusMap = {
    'Avipaka (Indigestion)': null,
    'Trishna (Feeling thirsty)': null,
    'Aruchi (Anorexia)': null,
    'Gauravam (Heaviness)': null,
    'Aalasya (Laziness)': null,
    'Nidranaasha(sleeplessness)': null,
    'Atinidrata (excessive sleep)': null,
    'Ashasta-swapna- darshanam (Abnormal dreams)': null,
    'Tandra (somnolent/feeling sleepy)': null,
    'Shrama (Breathlessnesswhile exertion)': null,
    'Daurbalyam ( Weakness)': null,
    'Klamah (Fatigue)': null,
    'Sthaulyum (Obesity)': null,
    'Pitta-samulklesha (VitiatedPitta Features)': null,
    'Shleshma-samutklesha (Vitiated Ka Features)': null,
    'Panduta (Anaemic )': null,
    'Kandu (Itching)': null,
    'Pidka,Kotha (Skin eruptions)': null,
    'Daurgandhyatvam (Foul smellfrom sweat, stool, urine etc.)': null,
    'Arati (Disturbed mind)': null,
    'Avasadaka (Depressed Mind)': null,
    'Bala-pranasha/ Brumhanairapi (Loss of physical strength even after taking good diet)':
        null,
    'Varna-pranasha(Loss of glow)': null,
    'Abudhitvam(absent mindedness)': null,
    'Klaibyum (Lost Vitality)': null,
  };

  @override
  Widget build(BuildContext context) {
    int totalYes = _statusMap.values.where((value) => value == true).length;
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    return Stack(children: [
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
        appBar: appBarMenu(context),
        body: Container(
          height: vh * 0.9,
          width: vw * 0.96,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  emptySpace(context, 0.025, null),
                  // column - 1
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Patient Details ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8)),
                                  color: Color(0xffe9f5db).withOpacity(0.5)),
                              height:
                                  MediaQuery.of(context).size.height * 0.7892,
                              width: MediaQuery.of(context).size.width * 0.18,
                              child: Form(
                                  key: _formkey,
                                  child: Column(
                                    children: [
                                      // Your existing form fields here
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.125,
                                              child: TextFormField(
                                                controller: _patientName,
                                                decoration: InputDecoration(
                                                    labelText: "Patient Name"),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Please enter patient name";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            Container(
                                              // height: 100,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.125,
                                              child: GestureDetector(
                                                onTap: () {
                                                  _selectDate(context);
                                                },
                                                child: AbsorbPointer(
                                                  child: TextFormField(
                                                    controller: _date,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            "Date of Birth",
                                                        suffixIcon: Icon(Icons
                                                            .calendar_today)),
                                                    // enabled: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.125,
                                              child: TextFormField(
                                                controller: _pastillness,
                                                decoration: InputDecoration(
                                                    labelText: "Past Illness"),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Please enter patient past illness";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.125,
                                              child: TextFormField(
                                                controller: _uhid,
                                                decoration: InputDecoration(
                                                    labelText: "UHID"),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Please enter patient uhid";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.125,
                                              child: TextFormField(
                                                controller: _patientOccupation,
                                                decoration: InputDecoration(
                                                    labelText:
                                                        "Patient Occupation"),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Please enter patient occupation";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.125,
                                              child: TextFormField(
                                                controller: _address,
                                                decoration: InputDecoration(
                                                    labelText:
                                                        "Patient address"),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Please enter patient address";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.125,
                                              child: TextFormField(
                                                controller: _medicalHistory,
                                                decoration: InputDecoration(
                                                    labelText:
                                                        "Medical History"),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Please enter patient medical history";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  emptySpace(context, 0.005, null),

                  // column - 2
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Complaints (Bahudosha)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.8,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Color(0xffe9f5db).withOpacity(0.5),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  width: MediaQuery.of(context).size.width,
                                  child: DataTable(
                                    border: TableBorder.all(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.transparent),
                                    headingRowColor:
                                        MaterialStateColor.resolveWith(
                                            (states) =>
                                                const Color(0xffb5c99a)),
                                    columns: [
                                      DataColumn(
                                          label: Text(
                                        'Complaint',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataColumn(
                                          label: Text('Status',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ],
                                    rows: _statusMap.entries.map((entry) {
                                      return DataRow(cells: [
                                        DataCell(Text(entry.key)),
                                        DataCell(
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Radio<bool?>(
                                                value: true,
                                                groupValue: entry.value,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    _statusMap[entry.key] =
                                                        value;
                                                  });
                                                },
                                              ),
                                              Text('Yes'),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Radio<bool?>(
                                                value: false,
                                                groupValue: entry.value,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    _statusMap[entry.key] =
                                                        value;
                                                  });
                                                },
                                              ),
                                              Text('No'),
                                            ],
                                          ),
                                        ),
                                      ]);
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: vh * 0.01),
                              child: Text(
                                "$totalYes/25 factors present",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  emptySpace(context, 0.005, null),

                  // column - 3
                  investigations(vw: vw, vh: vh),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.005,
                  ),

                  // column - 4
                  poorvaKarma(),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: const Color.fromARGB(255, 29, 186, 34),
              child: Icon(Icons.navigate_before_sharp),
            ),
            SizedBox(
              width: vw * 0.92,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ala_page()));
              },
              backgroundColor: const Color.fromARGB(255, 29, 186, 34),
              child: Icon(Icons.navigate_next_sharp),
            ),
          ],
        ),
      ),
    ]);
  }
}
