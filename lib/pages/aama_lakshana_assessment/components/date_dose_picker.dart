import 'package:ayurveda_app/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DateDosePicker extends StatelessWidget {
  const DateDosePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;

    return Container(
      width: vw,
      height: vh * 0.16,
      child: Column(
        children: [
          Container(
            height: vh * 0.05,
            width: vw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8))),
            child: Row(
              children: [
                emptySpace(context, 0.005, null),
                Container(
                  width: vw * 0.256,
                  height: vh,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Date",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      )),
                  decoration: BoxDecoration(
                      color: Color(0xff97a97c).withOpacity(0.5),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(8))
                      // border: Border.all(color: Colors.black),
                      ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xffb5c99a).withOpacity(0.5),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(8)),
                  ),
                ),
              ],
            ),
          ),
          emptySpace(context, null, 0.005),
          Container(
            height: vh * 0.1,
            width: vw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8))),
            child: Row(
              children: [
                emptySpace(context, 0.005, null),
                Container(
                  width: vw * 0.256,
                  height: vh,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Dose",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      )),
                  decoration: BoxDecoration(
                      color: Color(0xff97a97c).withOpacity(0.5),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(8))
                      // border: Border.all(color: Colors.black),
                      ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  height: vh,
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: vh * 0.04,
                        width: vw * 0.09,
                        color: Colors.transparent,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff87986a),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)))),
                            child: Text(
                              "3gm 2xday",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      Container(
                        height: vh * 0.04,
                        width: vw * 0.09,
                        color: Colors.transparent,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff87986a),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8)))),
                            child: Text(
                              "5gm 2xday",
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.center,
                            )),
                      )
                    ],
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw*0.1,
                  child: Container(
                    height: vh * 0.04,
                    width: vw * 0.09,
                    // color: Color(0xffb5c99a),
                    child: ChoiceChip(
                      label: Text("3gm 2x day"),
                      selected: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      backgroundColor: Color(0xff87986a),
                      selectedColor: Color(0xff87986a),
                    ),
                  ),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  color: Color(0xffb5c99a).withOpacity(0.5),
                ),
                emptySpace(context, 0.002, null),
                Container(
                  width: vw * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xffb5c99a).withOpacity(0.5),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(8)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
