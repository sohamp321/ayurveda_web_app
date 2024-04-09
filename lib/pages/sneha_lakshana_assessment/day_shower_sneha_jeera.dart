import 'package:ayurveda_app/components/widgets.dart';
import 'package:flutter/material.dart';

class DayShowerSnehaJeerna extends StatelessWidget {
  const DayShowerSnehaJeerna({super.key});

  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;

    return Container(
      width: vw*0.9,
      height: vh * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: vh * 0.1,
            width: vw * 0.098,
            decoration: BoxDecoration(
                color: Color(0xff97a97c),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                )),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Day 1",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          emptySpace(context, 0.002, null),
          Container(
            height: vh * 0.1,
            width: vw * 0.098,
            decoration: BoxDecoration(
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Day 2",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          emptySpace(context, 0.002, null),
          Container(
            height: vh * 0.1,
            width: vw * 0.098,
            decoration: BoxDecoration(
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Day 3",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          emptySpace(context, 0.002, null),
          Container(
            height: vh * 0.1,
            width: vw * 0.098,
            decoration: BoxDecoration(
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Day 4",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          emptySpace(context, 0.002, null),
          Container(
            height: vh * 0.1,
            width: vw * 0.098,
            decoration: BoxDecoration(
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Day 5",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          emptySpace(context, 0.002, null),
          Container(
            height: vh * 0.1,
            width: vw * 0.098,
            decoration: BoxDecoration(
              color: Color(0xffb5c99a).withOpacity(0.5),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Day 6",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          emptySpace(context, 0.002, null),
          Container(
            height: vh * 0.1,
            width: vw * 0.098,
            decoration: BoxDecoration(
                color: Color(0xffb5c99a).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  // bottomRight: Radius.circular(8),
                )),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Day 7",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          emptySpace(context, 0.005, null),
        ],
      ),
    );
  }
}
