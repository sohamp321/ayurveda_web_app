// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/atiyoga_lakshana/atiyoga_lakshana_page.dart';

import 'package:flutter/material.dart';

class Al_page extends StatefulWidget {
  const Al_page({super.key});

  @override
  State<Al_page> createState() => _Al_pageState();
}

class _Al_pageState extends State<Al_page> {
  List<String> AyogaLakshanList = [
    "Apravruti/keval aushadha parvaruti (cessation of emesis or expulsion of medicine only)",
    "Yathakrama kapha Pitta-anila agaman (sequential elminaion of Kapha, pitta and anila)",
    "Kapha-praseka ishtheva(Excessive mucous stained salivation)",
    "Sroto-avishudhi(Absense of calrity of channels/Bahya srotas- External Orifices - to be considered for immediate effect)",
    "Hridaya-Avishuddhi(discomfort in chest region and flanks) ",
    "Gurugatrata(heviness)",
    "Sphota-kotha(Skin rashes or eruptions)",
    "Kandu(Itching)",
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
            appBar: appBarMenu(context, 'Ayoga Lakshana'),
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
                              emptySpace(context, null, 0.01),
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
                                            i < AyogaLakshanList.length;
                                            i++) ...[
                                          if (i == 0) ...[
                                            observationRow(
                                                vh: vh,
                                                vw: vw,
                                                colorscheme: colorscheme,
                                                rowPosition: "Begin",
                                                observationText:
                                                    AyogaLakshanList[i]),
                                          ] else if (i ==
                                              AyogaLakshanList.length) ...[
                                            observationRow(
                                                vh: vh,
                                                vw: vw,
                                                colorscheme: colorscheme,
                                                rowPosition: "End",
                                                observationText:
                                                    AyogaLakshanList[i]),
                                          ] else ...[
                                            observationRow(
                                                vh: vh,
                                                vw: vw,
                                                colorscheme: colorscheme,
                                                rowPosition: "Middle",
                                                observationText:
                                                    AyogaLakshanList[i]),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AtiyogaL_page()));
                },
                backgroundColor: const Color.fromARGB(255, 29, 186, 34),
                child: Icon(Icons.navigate_next_sharp),
              ),
            ]))
      ],
    );
  }
}
