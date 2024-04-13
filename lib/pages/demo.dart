// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:ayurveda_app/pages/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {

  fetch () async {

    await FirebaseFirestore.instance.collection('temp').doc('temp1').set({'I am Drishti Agalwal':'B21CS027'});
    var data = await FirebaseFirestore.instance.collection('temp').doc('temp1').get();
    print(data.data());
    return data.data();
  }

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
            appBar: appBarMenu(context, "Demo page"),
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
                          // color: Colors.green,
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
                                              bottomLeft: Radius.circular(10))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          emptySpace(context, null, 0.01),
                                          observationRow(
                                              vh: vh,
                                              vw: vw,
                                              colorscheme: colorscheme,
                                              rowPosition: "Begin",
                                              observationText: "obs text",)
                                        ],
                                      )),
                                )
                              ]),
                        ),
                      ))),
            ),
            floatingActionButton:
                navigationButton(context, vw, PhysicianDashboard()))
      ],
    );
   
   
   
    // return FutureBuilder(
    //   future: fetch(),
    //   builder: (context,snapshot){
    //     if (snapshot.connectionState==ConnectionState.waiting){
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     } else if (snapshot.hasError){
    //       return Center(
    //         child: Text('Error: ${snapshot.error}'),
    //       );
    //     }
    //     var data = snapshot.data ?? [];
    //     print(snapshot.data);
    //     return Text(data.toString());
    //   }
    // );
  }
}
