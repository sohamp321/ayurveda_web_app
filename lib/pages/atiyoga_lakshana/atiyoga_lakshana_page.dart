// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';

import 'package:flutter/material.dart';

class AtiyogaL_page extends StatefulWidget {
  const AtiyogaL_page({super.key});

  @override
  State<AtiyogaL_page> createState() => _AtiyogaL_pageState();
}

class _AtiyogaL_pageState extends State<AtiyogaL_page> {
  List<String> atiyog_lakshan_list = [
    "Phenila-vamana (frothy appearance of vomitus)",
    "Rakta-chandika-yukta-vamana (blood stained vomitus)",
    "Kantha-Pida (pain/irritation of throat)",
    "Hrita-pida (pain in chest region)",
    "Trishna(excsessive thirst)",
    "Bala Hani(loss of strength)",
    "Moha/murchha(State of confusion/loss of consciousness)",
  ];
  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    final colorscheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        backgroundImage(context),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBarMenu(context, 'Atiyoga Lakshana'),
            drawer: navigationDrawer(context),
            body: Center(
                child: Container(
                    width: vw * 0.95,
                    height: vh * 0.85,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              emptySpace(context, null, 0.01),
                              DayShower(),
                              emptySpace(context, null, 0.005),
                              Center(
                                child: Container(
                                  width: vw * 0.94,
                                  height: vh * 0.745,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8))),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        emptySpace(context, null, 0.01),
                                        for (var i = 0;
                                              i < atiyog_lakshan_list.length;
                                              i++) ...[
                                            if (i == 0) ...[
                                              observationRow(
                                                  vh: vh,
                                                  vw: vw,
                                                  colorscheme: colorscheme,
                                                  rowPosition: "Begin",
                                                  observationText:
                                                      atiyog_lakshan_list[i]),
                                            ] else if (i ==
                                                atiyog_lakshan_list.length) ...[
                                              observationRow(
                                                  vh: vh,
                                                  vw: vw,
                                                  colorscheme: colorscheme,
                                                  rowPosition: "End",
                                                  observationText:
                                                      atiyog_lakshan_list[i]),
                                            ] else ...[
                                              observationRow(
                                                  vh: vh,
                                                  vw: vw,
                                                  colorscheme: colorscheme,
                                                  rowPosition: "Middle",
                                                  observationText:
                                                      atiyog_lakshan_list[i]),
                                            ],
                                            emptySpace(context, null, 0.01),
                                          ]
                                
                                      ],
                                    ),
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
