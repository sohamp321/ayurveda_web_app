import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/aama_lakshana_assessment/components/date_dose_picker.dart';
import 'package:ayurveda_app/pages/aama_lakshana_assessment/components/day_shower.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ala extends StatefulWidget {
  const Ala({super.key});

  @override
  State<Ala> createState() => _AlaState();
}

class _AlaState extends State<Ala> {
  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffe9f5db),
        appBar: appBarMenu(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DateShower(),
              emptySpace(context, null, 0.005),
              Container(
                height: vh * 0.75,
                width: vw * 0.98,
                decoration: BoxDecoration(
                    color: Color(0xffcfe1b9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8))),
                child: Column(
                  children: [
                    emptySpace(context, null, 0.005),
                    DateDosePicker(),
                    emptySpace(context, null, 0.005),
                    Padding(
                      padding: EdgeInsets.only(left: vw * 0.005),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Observations",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
