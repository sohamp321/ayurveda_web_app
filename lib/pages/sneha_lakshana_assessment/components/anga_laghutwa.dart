import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/day_shower.dart';
import 'package:flutter/material.dart';

class anga_laghutwa extends StatelessWidget {
  anga_laghutwa({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  Map<String, bool> answers = {
    'Day 1': false,
    'Day 2': false,
    'Day 3': false,
    'Day 4': false,
    'Day 5': false,
    'Day 6': false,
    'Day 7': false,
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: vh * 0.188,
          width: vw * 0.09,
          decoration: BoxDecoration(
            color: Color(0xffe9f5db).withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Center(child: Text("Anga Laghutwa"))),
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          height: vh * 0.19,
          width: vw * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: vh * 0.058,
                width: vw * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xff87986a).withOpacity(0.5),
                ),
                child: Center(
                  child: Text(
                    "Feeling of complete \nlightness of the body",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              emptySpace(context, null, 0.005),
              Container(
                height: vh * 0.058,
                width: vw * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xff87986a).withOpacity(0.5),
                ),
                child: Center(
                  child: Text(
                    "Moderate lightness",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              emptySpace(context, null, 0.005),
              Container(
                height: vh * 0.058,
                width: vw * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xff87986a).withOpacity(0.5),
                ),
                child: Center(
                  child: Text(
                    "Mild lightness felt",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          height: vh * 0.19,
          width: vw * 0.03,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: vh * 0.058,
                width: vw * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xff87986a).withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              emptySpace(context, null, 0.005),
              Container(
                height: vh * 0.058,
                width: vw * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xff87986a).withOpacity(0.5),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              emptySpace(context, null, 0.005),
              Container(
                height: vh * 0.058,
                width: vw * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xff87986a).withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        emptySpace(context, 0.005, null),
        sla_yes_no_begin(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        sla_yes_no(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        sla_yes_no(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        sla_yes_no(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        sla_yes_no(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        sla_yes_no(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        sla_yes_no_end(vh: vh, vw: vw),
      ],
    );
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
