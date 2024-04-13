import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/sarwanga/components/sarvanga_swedana.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/sneha_jeer_lakshan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sarvanga_swedana_page extends StatefulWidget {
  const Sarvanga_swedana_page({super.key});

  @override
  State<Sarvanga_swedana_page> createState() => _Sarvang_swedana_pageState();
}

class _Sarvang_swedana_pageState extends State<Sarvanga_swedana_page> {
  List<String> sarvanga_list = [
    "Sheeta uparama(Experiencing warmth in the body)",
    "Sanjate swade (Induced sweating)",
    "Mardavam (Feeling of softness in body)",
    "Gaurav-nigraha (Relief in heaviness of body)",
    "Cheshtayet aashu (Feeling more active)",
    "Shula uparama (Relief in body ache if present)",
    "Stambha nigraha (Relief in stiffness if present)",
    "Bhakta sharadha (Increased appetite)",
    "Tandra nindra hani (Decreased or loss in the intensity of somnolence/feeling sleepy)",
    "Strotasaam nirmalatvam (clarity of external channels)",
    "Any other observation",
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
        drawer: navigationDrawer(context),
        appBar: appBarMenu(context, "Sarvanga Swedana"),
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
                          height: vh * 0.745,
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              emptySpace(context, null, 0.01),
                              sarvanga_swedana(vh: vh, vw: vw),
                              emptySpace(context, null, 0.005),

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
                                            i < sarvanga_list.length;
                                            i++) ...[
                                          if (i == 0) ...[
                                            observationRow(
                                                vh: vh,
                                                vw: vw,
                                                colorscheme: colorscheme,
                                                rowPosition: "Begin",
                                                observationText:
                                                    sarvanga_list[i]),
                                          ] else if (i ==
                                              sarvanga_list.length) ...[
                                            observationRow(
                                                vh: vh,
                                                vw: vw,
                                                colorscheme: colorscheme,
                                                rowPosition: "End",
                                                observationText:
                                                    sarvanga_list[i]),
                                          ] else ...[
                                            observationRow(
                                                vh: vh,
                                                vw: vw,
                                                colorscheme: colorscheme,
                                                rowPosition: "Middle",
                                                observationText:
                                                    sarvanga_list[i]),
                                          ],
                                          emptySpace(context, null, 0.01),
                                        ]
                                      ],
                                    ),
                                  ),
                                ),
                              )

                              // shramaha(vh: vh, vw: vw),
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
                    MaterialPageRoute(builder: (context) => sjl_page()));
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
