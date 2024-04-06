import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

PreferredSizeWidget appBarMenu(BuildContext context){
    return AppBar(
      automaticallyImplyLeading: false,
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
    );
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
