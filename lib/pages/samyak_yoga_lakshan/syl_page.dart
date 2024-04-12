// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/ayoga_lakshana/al_page.dart';
import 'package:ayurveda_app/pages/samyak_yoga_lakshan/components/syl_obs.dart';
import 'package:ayurveda_app/pages/sarwanga/components/day_shower.dart';
import 'package:flutter/material.dart';

class syl_page extends StatefulWidget {
  const syl_page({super.key});

  @override
  State<syl_page> createState() => _syl_pageState();
}

class _syl_pageState extends State<syl_page> {
  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    return Stack(
      children: [
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
            appBar: appBarMenu(context, 'Samyak Yoga Lakshan'),
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
                          child: Column(
                            children: [
                              emptySpace(context, null, 0.01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  day_shower(),
                                ],
                              ),
                              emptySpace(context, null, 0.005),
                              Container(
                                height: vh * 0.735,
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
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      start_obs(context,
                                          "Kale-pravati (Timely initiation of emesis)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Yathakrama kapha Pitta-anila agaman \n(sequential elminaion of Kapha, pitta and anila)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Swayama cha avasthanam (emesis Stops \non its own after elimination of all toxins)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Kantha-shudhi(No irritation in throat)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Srotovishudhi (clarity of channels/Bahya srotas -External \nOrifices- to be considered for immediate effects )"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Hridaya-parshva-shudhi(No \ndiscomfort in chest region and flanks)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Indriya-shudhi(sense organs \nappearing to be more active)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Murdha-shudhi (lightness of head \nwithout any discomfort)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context, "Laghuta(lightness)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context, "Daurbalya(fatigue)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Swasthtaa(Decreased intensity \nof disease) - After effect"),
                                      emptySpace(context, null, 0.005),
                                      end_obs(context,
                                          "Manah-prasada(Feeling more \nhappy and contended)-After effect"),
                                      emptySpace(context, null, 0.005),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))),
            floatingActionButton:
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                          builder: (context) => Al_page()));
                },
                backgroundColor: const Color.fromARGB(255, 29, 186, 34),
                child: Icon(Icons.navigate_next_sharp),
              ),
            ]))
      ],
    );
  }
}
