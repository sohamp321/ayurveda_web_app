import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class dose extends StatelessWidget {
  const dose({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.059,
      width: vw,
      child: Row(
        children: [
          Container(
            height: vh * 0.056,
            width: vw * 0.176,
            decoration: BoxDecoration(
              color: Color(0xffe9f5db).withOpacity(0.5),
            ),
            child: Center(child: Text("Dose", style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
          // emptySpace(context, 0.002, null),

          emptySpace(context, 0.0031, null),
          yes_no_conts(vh: vh, vw: vw),
          emptySpace(context, 0.0031, null),
          yes_no_conts(vh: vh, vw: vw),
          emptySpace(context, 0.0031, null),
          yes_no_conts(vh: vh, vw: vw),
          emptySpace(context, 0.0031, null),
          yes_no_conts(vh: vh, vw: vw),
          emptySpace(context, 0.0031, null),
          yes_no_conts(vh: vh, vw: vw),
          emptySpace(context, 0.0031, null),
          yes_no_conts(vh: vh, vw: vw),
          emptySpace(context, 0.0031, null),
          yes_no_conts(vh: vh, vw: vw),
        ],
      ),
    );
  }
}

class yes_no_conts extends StatelessWidget {
  const yes_no_conts({
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
      width: vw * 0.0985,
      color: Color(0xffcfe1b9).withOpacity(0.5),
    );
  }
}
