import 'dart:js';

import 'package:ayurveda_app/components/widgets.dart';
import 'package:flutter/material.dart';

class Observations extends StatelessWidget {
  Observations({super.key});

  Map<String, bool?> questionsMap = {
    "Aruchi-Do you experience lack of desire\ntowards food even after feeling hungry?":
        null,
    "Apakti - Do you experience symptoms like\nindigestion or abdominal distension?":
        null,
    "Nishteeva- Do you have urge for repetitive\nspitting/excessive salivation?":
        null,
    "Anila Mudata - Do you have any bothersome\nfeeling of improper passing Flatus/stool?":
        null,
    "Mala Sanga - Do you experience decreased\nsweating?micturition or incomplete evacuation?\nalready covered in srotodhalakshan part":
        null,
    "Gaurav - Do you ever experience unusual\nfeeling of heaviness in the body?":
        null,
  };

  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;
    List<MapEntry<String, bool?>> entriesList = questionsMap.entries.toList();
    return Container(
      height: vh * 0.52,
      width: vw * 0.97,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: Colors.black),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            alaObsBegin(context, entriesList[0].key, vw, vh),
            emptySpace(context, null, 0.005),
            alaObs(context, entriesList[1].key, vw, vh),
            emptySpace(context, null, 0.005),
            alaObs(context, entriesList[2].key, vw, vh),
            emptySpace(context, null, 0.005),
            alaObs(context, entriesList[3].key, vw, vh),
            emptySpace(context, null, 0.005),
            alaObs(context, entriesList[4].key, vw, vh),
            emptySpace(context, null, 0.005),
            alaObsEnd(context, entriesList[5].key, vw, vh),
          ],
        ),
      ),
    );
  }
}

Widget alaObsBegin(
    BuildContext context, String observation, final vw, final vh) {
  return Container(
    width: vw,
    height: vh * 0.1,
    child: Row(
      children: [
        Container(
          width: vw * 0.256,
          height: vh,
          child: Center(
            child: Text(
              observation,
              style: TextStyle(fontSize: 14, letterSpacing: 1),
            ),
          ),
          decoration: BoxDecoration(
              color: Color(0xff97a97c).withOpacity(0.5),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8))
              // border: Border.all(color: Colors.black),
              ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          decoration: BoxDecoration(
            color: Color(0xffb5c99a).withOpacity(0.5),
            borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
          ),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget alaObs(BuildContext context, String observation, final vw, final vh) {
  return Container(
    width: vw,
    height: vh * 0.1,
    child: Row(
      children: [
        Container(
          width: vw * 0.256,
          height: vh,
          child: Center(
            child: Text(
              observation,
              style: TextStyle(fontSize: 14, letterSpacing: 1),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xff97a97c).withOpacity(0.5),
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(8))
            // border: Border.all(color: Colors.black),
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          decoration: BoxDecoration(
            color: Color(0xffb5c99a).withOpacity(0.5),
            // borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
          ),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget alaObsEnd(BuildContext context, String observation, final vw, final vh) {
  return Container(
    width: vw,
    height: vh * 0.1,
    child: Row(
      children: [
        Container(
          width: vw * 0.256,
          height: vh,
          child: Center(
            child: Text(
              observation,
              style: TextStyle(fontSize: 14, letterSpacing: 1),
            ),
          ),
          decoration: BoxDecoration(
              color: Color(0xff97a97c).withOpacity(0.5),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8))
              // border: Border.all(color: Colors.black),
              ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          color: Color(0xffb5c99a).withOpacity(0.5),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        emptySpace(context, 0.002, null),
        Container(
          width: vw * 0.1,
          decoration: BoxDecoration(
            color: Color(0xffb5c99a).withOpacity(0.5),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(8)),
          ),
          child: Row(
            children: [
              emptySpace(context, 0.005, null),
              Container(
                  width: vw * 0.09,
                  height: vh * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        width: vw * 0.04,
                        height: vh * 0.05,
                        child: Center(
                            child: Text("Yes", textAlign: TextAlign.center)),
                      ),
                      emptySpace(context, 0.002, null),
                      Container(
                        width: vw * 0.04,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xff87986a),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "No",
                          textAlign: TextAlign.center,
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}
