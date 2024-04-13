import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/agnideepthi.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/anga_laghutwa.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/anga_mardavta.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/anga_snigdhata.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/asamhata_varchas.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/klama.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/snigdha_varchas.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/vatanulomana.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/sneha_jeera_kala.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/snehadwega.dart';
import 'package:flutter/material.dart';

class Sla_Page extends StatefulWidget {
  const Sla_Page({super.key});

  @override
  State<Sla_Page> createState() => _Sla_PageState();
}

class _Sla_PageState extends State<Sla_Page> {
  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    final colorscheme = Theme.of(context).colorScheme;

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
        appBar: appBarMenu(context, "Sneha Lakshana Assessment"),
        body: Center(
          child: Container(
              width: vw * 0.9,
              height: vh * 0.85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    height: vh * 0.85,
                    width: vw * 0.88,
                    child: Column(
                      children: [
                        emptySpace(context, null, 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DayShower(),
                          ],
                        ),
                        emptySpace(context, null, 0.005),
                        Container(
                          height: vh * 0.74,
                          width: vw * 0.89,
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface
                                  .withOpacity(0.7),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8))),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                emptySpace(context, null, 0.005),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: vatanulomana(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: agnideepthi(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: snigdha_varchas(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: asamhata_varchas(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: snehodwega(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: anga_snigdhata(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: klama(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: anga_mardavta(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                                Container(
                                  height: vh * 0.19,
                                  width: vw,
                                  child: anga_laghutwa(vh: vh, vw: vw),
                                ),
                                emptySpace(context, null, 0.01),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Sneha_jeerna_kala()));
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

class sla_yes_no_begin extends StatelessWidget {
  const sla_yes_no_begin({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.2,
      width: vw * 0.09,
      child: Column(
        children: [
          Container(
            height: vh * 0.06,
            width: vw * 0.09,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          emptySpace(context, null, 0.005),
          Container(
            height: vh * 0.06,
            width: vw * 0.09,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          emptySpace(context, null, 0.005),
          Container(
            height: vh * 0.06,
            width: vw * 0.09,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class sla_yes_no extends StatelessWidget {
  const sla_yes_no({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.2,
      width: vw * 0.09,
      child: Column(
        children: [
          Container(
            height: vh * 0.06,
            width: vw * 0.09,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          emptySpace(context, null, 0.005),
          Container(
            height: vh * 0.06,
            width: vw * 0.09,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          emptySpace(context, null, 0.005),
          Container(
            height: vh * 0.06,
            width: vw * 0.09,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class sla_yes_no_end extends StatelessWidget {
  const sla_yes_no_end({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.2,
      width: vw * 0.089,
      child: Column(
        children: [
          Container(
            height: vh * 0.06,
            width: vw * 0.089,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          emptySpace(context, null, 0.005),
          Container(
            height: vh * 0.06,
            width: vw * 0.089,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          emptySpace(context, null, 0.005),
          Container(
            height: vh * 0.06,
            width: vw * 0.09,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Color(0xffb5c99a).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a),
                  ),
                  width: vw * 0.03,
                  height: vh * 0.045,
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
