// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/ayoga_lakshana/al_page.dart';
import 'package:flutter/material.dart';

class syl_page extends StatefulWidget {
  const syl_page({super.key});

  @override
  State<syl_page> createState() => _syl_pageState();
}

class _syl_pageState extends State<syl_page> {
  List<String> syl_list = [
    "Kale-pravati (Timely initiation of emesis)",
    "Yathakrama kapha Pitta-anila agaman (sequential elminaion of Kapha, pitta and anila)",
    "Swayama cha avasthanam (emesis Stops on its own after elimination of all toxins)",
    "Kantha-shudhi(No irritation in throat)",
    "Srotovishudhi (clarity of channels/Bahya srotas -External Orifices- to be considered for immediate effects )",
    "Hridaya-parshva-shudhi(No discomfort in chest region and flanks)",
    "Indriya-shudhi(sense organs appearing to be more active)",
    "Murdha-shudhi (lightness of head without any discomfort)",
    "Laghuta(lightness)",
    "Daurbalya(fatigue)",
    "Swasthtaa(Decreased intensity of disease) - After effect",
    "Manah-prasada(Feeling more happy and contended)-After effect",
  ];

  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    final colorscheme = Theme.of(context).colorScheme;
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        emptySpace(context, null, 0.01),
                                        for (var i = 0;
                                            i < syl_list.length;
                                            i++) ...[
                                          if (i == 0) ...[
                                            observationRow(
                                              vh: vh,
                                              vw: vw,
                                              colorscheme: colorscheme,
                                              rowPosition: "Begin",
                                              observationText: syl_list[i],
                                            ),
                                          ] else if (i ==
                                              syl_list.length - 1) ...[
                                            observationRow(
                                              vh: vh,
                                              vw: vw,
                                              colorscheme: colorscheme,
                                              rowPosition: "End",
                                              observationText: syl_list[i],
                                            ),
                                          ] else ...[
                                            observationRow(
                                              vh: vh,
                                              vw: vw,
                                              colorscheme: colorscheme,
                                              rowPosition: "Middle",
                                              observationText: syl_list[i],
                                            ),
                                          ],
                                          emptySpace(context, null, 0.005),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Al_page()));
                },
                backgroundColor: const Color.fromARGB(255, 29, 186, 34),
                child: Icon(Icons.navigate_next_sharp),
              ),
            ]))
      ],
    );
  }
}
