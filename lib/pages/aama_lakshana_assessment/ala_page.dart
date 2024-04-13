import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/aama_lakshana_assessment/components/date_dose_picker.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/sla_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ala_page extends StatefulWidget {
  const ala_page({super.key});

  @override
  State<ala_page> createState() => _ala_pageState();
}

class _ala_pageState extends State<ala_page> {
  List<String> ala_list = [
    "Aruchi-Do you experience lack of desire towards food even after feeling hungry?",
    "Apakti - Do you experience symptoms like indigestion or abdominal distension?",
    "Nishteeva- Do you have urge for repetitive spitting/excessive salivation?",
    "Anila Mudata - Do you have any bothersome feeling of improper passing Flatus/stool?",
    "Mala Sanga - Do you experience decreased sweating?micturition or incomplete evacuation? already covered in srotodhalakshan part",
    "Gaurav - Do you ever experience unusual feeling of heaviness in the body?",
  ];
  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    final colorscheme = Theme.of(context).colorScheme;

    return Stack(children: [
      backgroundImage(context),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBarMenu(context, 'Aama Lakshana Assessment'),
        drawer: navigationDrawer(context),
        body: Center(
          child: Container(
            width: vw * 0.95,
            height: vh * 0.85,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
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
                            color: Color(0xffcfe1b9).withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            emptySpace(context, null, 0.01),
                            DateDosePicker(),
                            emptySpace(context, null, 0.005),
                            Padding(
                              padding: EdgeInsets.only(left: vw * 0.005),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Observations",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )),
                            ),
                            Center(
                              child: Container(
                                width: vw * 0.94,
                                height: vh * 0.6,
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
                                          i < ala_list.length;
                                          i++) ...[
                                        if (i == 0) ...[
                                          observationRow(
                                              vh: vh,
                                              vw: vw,
                                              colorscheme: colorscheme,
                                              rowPosition: "Begin",
                                              observationText: ala_list[i]),
                                        ] else if (i == ala_list.length) ...[
                                          observationRow(
                                              vh: vh,
                                              vw: vw,
                                              colorscheme: colorscheme,
                                              rowPosition: "End",
                                              observationText: ala_list[i]),
                                        ] else ...[
                                          observationRow(
                                              vh: vh,
                                              vw: vw,
                                              colorscheme: colorscheme,
                                              rowPosition: "Middle",
                                              observationText: ala_list[i]),
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
                  ],
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
                    MaterialPageRoute(builder: (context) => Sla_Page()));
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
