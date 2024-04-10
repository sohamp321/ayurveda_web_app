import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/sarwanga/components/day_shower.dart';
import 'package:ayurveda_app/pages/sarwanga/components/observations.dart';
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
  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
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
                          day_shower(),
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
                            
                            sarvanga_swedana(vh: vh, vw: vw),
                            emptySpace(context, null, 0.005),
                            obs_sarvanga(vh: vh, vw: vw),
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
