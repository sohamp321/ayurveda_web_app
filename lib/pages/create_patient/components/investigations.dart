import 'package:flutter/material.dart';

class investigations extends StatelessWidget {
  const investigations({
    super.key,
    required this.vw,
    required this.vh,
  });

  final double vw;
  final double vh;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Investigations",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 0.2,
          color: Color(0xffe9f5db),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: vw * 0.175,
                    height: vh * 0.1,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upload",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: vh * 0.01,
                          ),
                          Icon(Icons.upload),
                        ]),
                    decoration: BoxDecoration(
                        color: Color(0xffb5c99a),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Upload Pressed")));
                  },
                ),
                Column(
                  children: [
                    Container(
                      width: vw * 0.175,
                      height: vh * 0.05,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8))),
                      child: Text("Haemoglobin"),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: vh * 0.002, bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("RBC"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("Platelette Count"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("ESR"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("TLC"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("HbA1C"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("AEC"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("CRP"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("Total Cholestrol"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("SGOT"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vh * 0.002),
                      child: Container(
                        width: vw * 0.175,
                        height: vh * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                        ),
                        child: Text("SGPT"),
                      ),
                    ),
                    Container(
                      width: vw * 0.175,
                      height: vh * 0.05,
                      decoration: BoxDecoration(
                          color: Color(0xffb5c99a),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Text("TOTAL BILIRUBIN"),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
