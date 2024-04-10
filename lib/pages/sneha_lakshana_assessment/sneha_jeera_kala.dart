import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/aama_lakshana_assessment/components/observations.dart';
import 'package:ayurveda_app/pages/sarwanga/sarvanga.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/aahara.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/day_shower.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/observations.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/sarvang.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/components/shramaha.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/day_shower_sneha_jeera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sneha_jeerna_kala extends StatefulWidget {
  const Sneha_jeerna_kala({super.key});

  @override
  State<Sneha_jeerna_kala> createState() => _Sneha_jeerna_kalaState();
}

class _Sneha_jeerna_kalaState extends State<Sneha_jeerna_kala> {
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
        appBar: appBarMenu(context),
        body: Center(
          child: Container(
            width: vw * 0.95,
            height: vh * 0.85,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  height: vh * 0.85,
                  width: vw,
                  child: Column(
                    children: [
                      emptySpace(context, null, 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DayShowerSnehaJeerna(),
                        ],
                      ),
                      emptySpace(context, null, 0.005),
                      Container(
                        height: vh * 0.74,
                        width: vw * 0.94,
                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .surface
                                .withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8))),
                        child: Column(
                          children: [
                            Aahara(vh: vh, vw: vw),
                            emptySpace(context, null, 0.005),
                            sarvang(vh: vh, vw: vw),
                            emptySpace(context, null, 0.005),
                            observations(vh: vh, vw: vw),
                            emptySpace(context, null, 0.005),
                            // shramaha(vh: vh, vw: vw),
                          ],
                        ),
                      ),
                    ],

                  ),
                ),
              ),
            ),
          ),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sarvanga_swedana_page()));
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
