import 'package:ayurveda_app/pages/aama_lakshana_assessment/ala_page.dart';
import 'package:ayurveda_app/pages/atiyoga_lakshana/atiyoga_lakshana_page.dart';
import 'package:ayurveda_app/pages/ayoga_lakshana/al_page.dart';
import 'package:ayurveda_app/pages/samyak_yoga_lakshan/syl_page.dart';
import 'package:ayurveda_app/pages/sarwanga/sarvanga.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/sneha_jeer_lakshan.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/sla_page.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/sneha_jeera_kala.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

PreferredSizeWidget appBarMenu(BuildContext context, String pageTitle){
    return AppBar(
      // automaticallyImplyLeading: false,
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
          Spacer(),
          Text(
            pageTitle,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.45),
        ],
      ),
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
    );
} 

class navigationDrawer extends StatelessWidget {
  const navigationDrawer({
    super.key,
    required this.colorscheme,
  });

  final ColorScheme colorscheme;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: colorscheme.primary,
            ),
            child: Center(
              child: Text(
                'Menu',
                style: TextStyle(
                  color: colorscheme.onPrimary,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Aama Lakshan Assessment'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ala_page()));
            },
          ),
          ListTile(
            title: Text('Snehana Lakshan Assessment'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Sla_Page()));
            },
          ),
          ListTile(
            title: Text('Snehana Jeerna Kala'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Sneha_jeerna_kala()));
            },
          ),
          ListTile(
            title: Text('Sarvanga Swedana'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Sarvanga_swedana_page()));
            },
          ),
          ListTile(
            title: Text('Snehjeeryamana Lakshan Assessment'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sjl_page()));
            },
          ),
          ListTile(
            title: Text('Samyak Yoga Lakshan'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => syl_page()));
            },
          ),
          ListTile(
            title: Text('Ayoga Lakshan'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Al_page()));
            },
          ),
          ListTile(
            title: Text('Atiyoga Lakshan'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AtiyogaL_page()));
            },
          ),
        ],
      ),
    );
  }
}

Widget emptySpace(BuildContext context, double? widthRatio, double? heightRatio) {
 return SizedBox(
    width: MediaQuery.of(context).size.width * (widthRatio ?? 1.0),
    height: MediaQuery.of(context).size.height * (heightRatio ?? 1.0),
 );
}


class CustomButton extends StatelessWidget {
 final double height;
 final double width;
 final VoidCallback onPressed;
 final String buttonText;

 CustomButton({
    required this.height,
    required this.width,
    required this.onPressed,
    required this.buttonText,
 });

 @override
 Widget build(BuildContext context) {
    double vh = MediaQuery.of(context).size.height;
    double vw = MediaQuery.of(context).size.width;

    return Container(
      height: vh * height,
      width: vw * width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff87986a),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
 }
}
