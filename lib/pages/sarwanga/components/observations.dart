import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/sarwanga/components/aashara_diet.dart';
import 'package:ayurveda_app/pages/sarwanga/components/bhakta.dart';
import 'package:ayurveda_app/pages/sarwanga/components/chesthayet.dart';
import 'package:ayurveda_app/pages/sarwanga/components/gaurav_nigraha.dart';
import 'package:ayurveda_app/pages/sarwanga/components/mardavam.dart';
import 'package:ayurveda_app/pages/sarwanga/components/oth_obs.dart';
import 'package:ayurveda_app/pages/sarwanga/components/sanjaate.dart';
import 'package:ayurveda_app/pages/sarwanga/components/shita_uparama.dart';
import 'package:ayurveda_app/pages/sarwanga/components/shula_uparama.dart';
import 'package:ayurveda_app/pages/sarwanga/components/stambha.dart';
import 'package:ayurveda_app/pages/sarwanga/components/strotasaam.dart';
import 'package:ayurveda_app/pages/sarwanga/components/tandra.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class obs_sarvanga extends StatelessWidget {
  const obs_sarvanga({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh * 0.6,
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
                    // child: Center(child: Text("1")),
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
                            child: FittedBox(
                              child: Text(
                                "Observation(sign and symptoms)",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        emptySpace(context, null, 0.005),
                      ],
                    ),
                  ),
                  emptySpace(context, 0.0032, null),
                  obs_containers(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  obs_containers(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  obs_containers(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  obs_containers(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  obs_containers(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  obs_containers(vh: vh, vw: vw),
                  emptySpace(context, 0.0032, null),
                  obs_containers(vh: vh, vw: vw),
                ],
              ),
            ),
            emptySpace(context, null, 0.002),
            shita_uparama(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            Sanjaate_swede(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            Mardavam(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            Gaurav_nigraha(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            Cheshtayet(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            shula(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            stambha(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            bhakta(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            tandra(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            strotassam(vh: vh, vw: vw),
            emptySpace(context, null, 0.002),
            other_obs(vh: vh, vw: vw),
          ],
        ),
      ),
    );
  }
}

class obs_containers extends StatelessWidget {
  const obs_containers({
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
