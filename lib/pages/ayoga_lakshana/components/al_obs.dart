import 'dart:ui';
import 'package:ayurveda_app/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget start_obs(BuildContext context, String row_heading) {
  final vw = MediaQuery.of(context).size.width;
  final vh = MediaQuery.of(context).size.height;
  return Container(
    height: vh * 0.059,
    width: vw,
    child: Row(
      children: [
        emptySpace(context, 0.002, null),
        Container(
          height: vh * 0.056,
          width: vw * 0.238,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            color: Color(0xffcfe1b9).withOpacity(0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              emptySpace(context, null, 0.005),
              Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10))),
                height: vh * 0.045,
                width: vw * 0.238,
                child: Align(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text(
                      row_heading,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              emptySpace(context, null, 0.005),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
      ],
    ),
  );
}

Widget mid_obs(BuildContext context, String row_heading) {
  final vw = MediaQuery.of(context).size.width;
  final vh = MediaQuery.of(context).size.height;
  return Container(
    height: vh * 0.059,
    width: vw,
    child: Row(
      children: [
        emptySpace(context, 0.002, null),
        Container(
          height: vh * 0.056,
          width: vw * 0.238,
          decoration: BoxDecoration(
            color: Color(0xffcfe1b9).withOpacity(0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              emptySpace(context, null, 0.005),
              Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10))),
                height: vh * 0.045,
                width: vw * 0.238,
                child: Align(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text(
                      row_heading,
                    ),
                  ),
                ),
              ),
              emptySpace(context, null, 0.005),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
      ],
    ),
  );
}

Widget end_obs(BuildContext context, String row_heading) {
  final vw = MediaQuery.of(context).size.width;
  final vh = MediaQuery.of(context).size.height;
  return Container(
    height: vh * 0.059,
    width: vw,
    child: Row(
      children: [
        emptySpace(context, 0.002, null),
        Container(
          height: vh * 0.056,
          width: vw * 0.238,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            color: Color(0xffcfe1b9).withOpacity(0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              emptySpace(context, null, 0.005),
              Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(10))),
                height: vh * 0.045,
                width: vw * 0.238,
                child: Align(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text(
                      row_heading,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              emptySpace(context, null, 0.005),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
        emptySpace(context, 0.002, null),
        yes_no_conts(vh: vh, vw: vw),
      ],
    ),
  );
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
      width: vw * 0.098,
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
