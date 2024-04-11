// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/ayoga_lakshana/components/al_obs.dart';
import 'package:ayurveda_app/pages/sarwanga/components/day_shower.dart';

import 'package:flutter/material.dart';

class AtiyogaL_page extends StatefulWidget {
  const AtiyogaL_page({super.key});

  @override
  State<AtiyogaL_page> createState() => _AtiyogaL_pageState();
}

class _AtiyogaL_pageState extends State<AtiyogaL_page> {
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
                                          "Phenila-vamana (frothy appearance of vomitus)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Rakta-chandika-yukta-vamana (blood stained vomitus)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Kantha-Pida (pain/irritation of throat))"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Hrita-pida (pain in chest region)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Trishna(excsessive thirst)"),
                                      emptySpace(context, null, 0.005),
                                      mid_obs(context,
                                          "Bala Hani(loss of strength)"),
                                      emptySpace(context, null, 0.005),
                                      end_obs(context,
                                          "Moha/murchha(State of confusion/loss of consciousness)"),
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Sneha_jeerna_kala()));
                },
                backgroundColor: const Color.fromARGB(255, 29, 186, 34),
                child: Icon(Icons.navigate_next_sharp),
              ),
            ]))
      ],
    );
  }
}
