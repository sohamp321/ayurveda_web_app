import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Saad extends StatelessWidget {
  const Saad({
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
            child: Center(child: Text("Saad")),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: vh * 0.04,
            width: vw * 0.04,
            decoration: BoxDecoration(
              color: Color(0xff97a97c).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10)),
            ),
            child: Center(child: Text("Yes")),
          ),
          emptySpace(context, 0.005, null),
          Container(
            height: vh * 0.04,
            width: vw * 0.04,
            decoration: BoxDecoration(
              color: Color(0xff97a97c).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)),
            ),
            child: Center(child: Text("No")),
          ),
        ],
      ),
    );
  }
}
