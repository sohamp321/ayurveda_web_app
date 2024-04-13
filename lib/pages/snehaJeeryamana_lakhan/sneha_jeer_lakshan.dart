import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/dose.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/hunger.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/snehapana.dart';
import 'package:flutter/material.dart';

class sjl_page extends StatefulWidget {
  const sjl_page({super.key});

  @override
  State<sjl_page> createState() => _sjl_pageState();
}

class _sjl_pageState extends State<sjl_page> {
  List<String> sjl_lakshan = [
    "Trishna",
    "Daha",
    "Bhrama",
    "Saad",
    "Arati",
    "Klama Sneha",
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
          appBar: appBarMenu(context, 'Sneha Jeeryamana Lakshana'),
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
                                  for (var i = 0; i < sjl_lakshan.length; i++) ...[
                                    if (i == 0) ...[
                                      observationRow(
                                          vh: vh,
                                          vw: vw,
                                          colorscheme: colorscheme,
                                          rowPosition: "Begin",
                                          observationText: sjl_lakshan[i]),
                                    ] else if (i == sjl_lakshan.length) ...[
                                      observationRow(
                                          vh: vh,
                                          vw: vw,
                                          colorscheme: colorscheme,
                                          rowPosition: "End",
                                          observationText: sjl_lakshan[i]),
                                    ] else ...[
                                      observationRow(
                                          vh: vh,
                                          vw: vw,
                                          colorscheme: colorscheme,
                                          rowPosition: "Middle",
                                          observationText: sjl_lakshan[i]),
                                    ],
                                    emptySpace(context, null, 0.01),
                                  ],
                                              
                                  // Trishna(vh: vh, vw: vw),
                                  // emptySpace(context, null, 0.001),
                                  // Daha(vh: vh, vw: vw),
                                  // emptySpace(context, null, 0.001),
                                  // Bhrama(vh: vh, vw: vw),
                                  // emptySpace(context, null, 0.001),
                                  // Saad(vh: vh, vw: vw),
                                  // emptySpace(context, null, 0.001),
                                  // arati(vh: vh, vw: vw),
                                  // emptySpace(context, null, 0.001),
                                  // klama_sneha(vh: vh, vw: vw),
                                              
                                  emptySpace(context, null, 0.009),
                                  dose(vh: vh, vw: vw),
                                  emptySpace(context, null, 0.001),
                                  hunger(vh: vh, vw: vw),
                                  emptySpace(context, null, 0.001),
                                  snehapana(vh: vh, vw: vw),
                                  emptySpace(context, null, 0.005),
                                              
                                  Text(
                                    "Grades : Avara : 6-8, Madhyama: 9-13 , Pravara : 14-18",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
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
            ],
          ),
        )
      ],
    );
  }
}
