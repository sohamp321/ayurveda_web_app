import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/day_shower.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/shramaha.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/sutvak.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/swapna.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/day_shower_sneha_jeera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class observations extends StatelessWidget {
  const observations({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.38,
      width: vw,
      color: Color(0xffe9f5db).withOpacity(0.5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: vw,
              height: vh * 0.06,
              child: Row(
                children: [
                  Container(
                    height: vh * 0.056,
                    width: vw * 0.09,
                    decoration: BoxDecoration(
                      color: Color(0xffe9f5db).withOpacity(0.5),
                    ),
                    child: Center(child: Text("1")),
                  ),
                  emptySpace(context, 0.002, null),
                  Container(
                    height: vh * 0.056,
                    width: vw * 0.149,
                    color: Color(0xffcfe1b9).withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        emptySpace(context, null, 0.005),
                        Container(
                          height: vh * 0.045,
                          width: vw * 0.14,
                          child: Center(
                            child: Text(
                              "Observation",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        emptySpace(context, null, 0.005),
                      ],
                    ),
                  ),
                  emptySpace(context, 0.0032, null),
                  til_laddoo_counter(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  til_laddoo_counter(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  til_laddoo_counter(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  til_laddoo_counter(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  til_laddoo_counter(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  til_laddoo_counter(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  til_laddoo_counter(vh: vh, vw: vw),
                ],
              ),
            ),
            emptySpace(context, null, 0.002),
            shramaha(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            sutvak(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            swapna(vh: vh, vw: vw),
          ],
        ),
      ),
    );
  }
}

class til_laddoo_counter extends StatelessWidget {
  const til_laddoo_counter({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.056,
      width: vw * 0.096,
      color: Color(0xffcfe1b9).withOpacity(0.5),
    );
  }
}
