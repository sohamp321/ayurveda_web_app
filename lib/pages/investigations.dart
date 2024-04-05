import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Investigations extends StatefulWidget {
  const Investigations({super.key});

  @override
  State<Investigations> createState() => _InvestigationsState();
}

class _InvestigationsState extends State<Investigations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.015,
                  top: 10,
                  bottom: 10,
                  right: 10),
              child: ProfilePicture(
                name: 'Physician Name',
                radius: 25,
                fontsize: 18,
                random: true,
              ),
            ),
            Text(
              "Physician Name",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      ),

      body: Column(
        children: [
          Text("Investigations"),
        ],
      ),

    );
  }
}