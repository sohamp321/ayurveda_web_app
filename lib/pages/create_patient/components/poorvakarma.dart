import 'package:ayurveda_app/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class poorvaKarma extends StatelessWidget {
  const poorvaKarma({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Poorvakarma",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.13,
            decoration: BoxDecoration(
                color: Color(0xffe9f5db),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Padding(padding: EdgeInsets.only(top: vh * 0.01)),
                  CustomButton(
                      height: 0.2,
                      width: 0.11,
                      onPressed: () {},
                      buttonText: "Guduchi Choorna"),
    
                  CustomButton(
                      height: 0.2,
                      width: 0.11,
                      onPressed: () {},
                      buttonText: "Musta Churna"),
    
                  CustomButton(
                      height: 0.2,
                      width: 0.11,
                      onPressed: () {},
                      buttonText: "Panchakol Churna"),
                ]))
      ],
    );
  }
}