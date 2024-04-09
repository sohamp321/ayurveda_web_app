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
            width: vw * 0.09,
            decoration: BoxDecoration(
              
              color: Color(0xffe9f5db).withOpacity(0.5),
            ),
            child: Center(
                child: Text("Sarvanga Swedana with ")),
          ),
          emptySpace(context, 0.002, null),
          Container(
            height: vh * 0.188,
            width: vw * 0.149,
            color: Color(0xffcfe1b9).withOpacity(0.5),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                emptySpace(context, null, 0.005),
                Container(
                  height: vh * 0.054,
                  width: vw * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Color(0xff87986a)
                        .withOpacity(0.5),
                  ),
                  child: Center(
                    child: Text(
                      "Date",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                emptySpace(context, null, 0.005),
                Container(
                  height: vh * 0.054,
                  width: vw * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xff87986a)
                        .withOpacity(0.5),
                  ),
                  child: Center(
                    child: Text(
                      "Duration",
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
      height: vh*0.188,
      width: vw*0.096,
      color: Color(0xffcfe1b9).withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          emptySpace(context, null, 0.005),
          Container(
            decoration: BoxDecoration(
            color: Color(0xff97a97c).withOpacity(0.5),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            width: vw*0.09,
            height: vh*0.054,
          ),
          emptySpace(context, null, 0.005),
          Container(
            decoration: BoxDecoration(
            color: Color(0xff97a97c).withOpacity(0.5),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
            ),
            width: vw*0.09,
            height: vh*0.054,
            child: Align(
              alignment: Alignment.center,
              child: Text("30 minutes")),
          ),
          emptySpace(context, null, 0.005),
          
        ],
      ),
    );
  }
}
