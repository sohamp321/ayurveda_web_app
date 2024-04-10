import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/arati.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/bhrama.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/daha.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/day_shower_snehaJeerya.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/dose.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/hunger.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/klama_sneha.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/saad.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/snehapana.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/components/trishna.dart';
import 'package:flutter/material.dart';

class sjl_page extends StatefulWidget {
  const sjl_page({super.key});

  @override
  State<sjl_page> createState() => _sjl_pageState();
}

class _sjl_pageState extends State<sjl_page> {
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
              width: vw * 0.9,
              height: vh * 0.85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Column(
                    children: [
                      emptySpace(context, null, 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          day_shower_sneha_jeerya(),
                        ],
                      ),
                      emptySpace(context, null, 0.005),
                      Container(
                        height: vh * 0.72,
                        width: vw * 0.89,
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
                            Trishna(vh: vh, vw: vw),
                            emptySpace(context, null, 0.001),
                            Daha(vh: vh, vw: vw),
                            emptySpace(context, null, 0.001),
                            Bhrama(vh: vh, vw: vw),
                            emptySpace(context, null, 0.001),
                            Saad(vh: vh, vw: vw),
                            emptySpace(context, null, 0.001),
                            arati(vh: vh, vw: vw),
                            emptySpace(context, null, 0.001),
                            klama_sneha(vh: vh, vw: vw),

                            emptySpace(context, null, 0.009),
                            dose(vh: vh, vw: vw),
                            emptySpace(context, null, 0.001),
                            hunger(vh: vh, vw: vw),
                            emptySpace(context, null, 0.001),
                            snehapana(vh: vh, vw: vw),
                            emptySpace(context, null, 0.005),

                            Text("Grades : Avara : 6-8, Madhyama: 9-13 , Pravara : 14-18", style: TextStyle(fontWeight: FontWeight.bold),)

                          ],
                        ),
                      )
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
            
          ],
        ),

        )
      ],
    );
  }
}
