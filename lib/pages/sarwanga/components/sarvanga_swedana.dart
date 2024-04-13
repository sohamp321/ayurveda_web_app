import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/day_shower.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/day_shower_sneha_jeera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class sarvanga_swedana extends StatelessWidget {
  const sarvanga_swedana({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.13,
      width: vw,
      child: Row(
        children: [
          Container(
            height: vh * 0.188,
            width: vw * 0.29,
            color: Color(0xffcfe1b9).withOpacity(0.5),
            child: Container(
              height: vh * 0.054,
              width: vw * 0.14,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Duration",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          emptySpace(context, 0.002, null),
          til_laddoo_counter(vh: vh, vw: vw),
          emptySpace(context, 0.002, null),
          til_laddoo_counter(vh: vh, vw: vw),
          emptySpace(context, 0.002, null),
          til_laddoo_counter(vh: vh, vw: vw),
          emptySpace(context, 0.002, null),
          til_laddoo_counter(vh: vh, vw: vw),
          emptySpace(context, 0.002, null),
          til_laddoo_counter(vh: vh, vw: vw),
          emptySpace(context, 0.002, null),
          til_laddoo_counter(vh: vh, vw: vw),
          emptySpace(context, 0.002, null),
          til_laddoo_counter(vh: vh, vw: vw),
        ],
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
      height: vh * 0.188,
      width: vw * 0.09,
      color: Color(0xffcfe1b9).withOpacity(0.5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        width: vw * 0.08,
        height: vh * 0.054,
        child: Align(alignment: Alignment.center, child: Text("30 minutes")),
      ),
    );
  }
}
