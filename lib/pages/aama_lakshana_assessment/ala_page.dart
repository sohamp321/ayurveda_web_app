import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/aama_lakshana_assessment/components/date_dose_picker.dart';
import 'package:ayurveda_app/pages/aama_lakshana_assessment/components/day_shower.dart';
import 'package:ayurveda_app/pages/aama_lakshana_assessment/components/observations.dart';
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
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/background-6.jpg"), // Use AssetImage for local images
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBarMenu(context),
          body: Center(
            child: Container(
              height: vh*0.86,
              width: vw*0.99,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15 , sigmaY: 15),
                  child: Column(
                    children: [
                      emptySpace(context, null, 0.01),
                      DateShower(),
                      emptySpace(context, null, 0.005),
                      Container(
                        height: vh * 0.73,
                        width: vw * 0.98,
                        decoration: BoxDecoration(
                            color: Color(0xffcfe1b9).withOpacity(0.7),
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
                            Observations(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    ]);
  }
}
