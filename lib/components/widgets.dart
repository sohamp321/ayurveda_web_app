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

PreferredSizeWidget appBarMenu(BuildContext context, String pageTitle) {
  return AppBar(
    // automaticallyImplyLeading: false,
    backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.4),
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

Widget navigationDrawer(BuildContext context) {
  final colorscheme = Theme.of(context).colorScheme;
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ala_page()));
          },
        ),
        ListTile(
          title: Text('Snehana Lakshan Assessment'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Sla_Page()));
          },
        ),
        ListTile(
          title: Text('Snehana Jeerna Kala'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Sneha_jeerna_kala()));
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sjl_page()));
          },
        ),
        ListTile(
          title: Text('Samyak Yoga Lakshan'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => syl_page()));
          },
        ),
        ListTile(
          title: Text('Ayoga Lakshan'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Al_page()));
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

Widget navigationButton(
    BuildContext context, double vw, Widget destinationPage) {
  return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
    FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destinationPage));
      },
      backgroundColor: const Color.fromARGB(255, 29, 186, 34),
      child: Icon(Icons.navigate_next_sharp),
    ),
  ]);
}

Widget emptySpace(
    BuildContext context, double? widthRatio, double? heightRatio) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * (widthRatio ?? 1.0),
    height: MediaQuery.of(context).size.height * (heightRatio ?? 1.0),
  );
}

Widget backgroundImage(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            "assets/images/background-6.jpg"), // Use AssetImage for local images
        fit: BoxFit.cover,
      ),
    ),
  );
}

// used in poorvakarma
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

class DayShower extends StatelessWidget {
  const DayShower({super.key});

  @override
  Widget build(BuildContext context) {
    final vw = MediaQuery.of(context).size.width;
    final vh = MediaQuery.of(context).size.height;

    return Container(
      width: vw * 0.7,
      height: vh * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          dayDateWidget(
            vh: vh,
            vw: vw,
            day: "Day 1",
            date: "DD/MM/YYYY",
            isCurrent: true,
            position: "Begin",
          ),
          emptySpace(context, 0.002, null),
          dayDateWidget(
            vh: vh,
            vw: vw,
            day: "Day 2",
            date: "DD/MM/YYYY",
            isCurrent: false,
            position: "Middle",
          ),
          emptySpace(context, 0.002, null),
          dayDateWidget(
            vh: vh,
            vw: vw,
            day: "Day 3",
            date: "DD/MM/YYYY",
            isCurrent: false,
            position: "Middle",
          ),
          emptySpace(context, 0.002, null),
          dayDateWidget(
            vh: vh,
            vw: vw,
            day: "Day 4",
            date: "DD/MM/YYYY",
            isCurrent: false,
            position: "Middle",
          ),
          emptySpace(context, 0.002, null),
          dayDateWidget(
            vh: vh,
            vw: vw,
            day: "Day 5",
            date: "DD/MM/YYYY",
            isCurrent: false,
            position: "Middle",
          ),
          emptySpace(context, 0.002, null),
          dayDateWidget(
            vh: vh,
            vw: vw,
            day: "Day 6",
            date: "DD/MM/YYYY",
            isCurrent: false,
            position: "Middle",
          ),
          emptySpace(context, 0.002, null),
          dayDateWidget(
            vh: vh,
            vw: vw,
            day: "Day 7",
            date: "DD/MM/YYYY",
            isCurrent: false,
            position: "End",
          ),
          emptySpace(context, 0.01, null),
        ],
      ),
    );
  }
}

class dayDateWidget extends StatelessWidget {
  const dayDateWidget(
      {super.key,
      required this.vh,
      required this.vw,
      required this.day,
      required this.date,
      required this.isCurrent,
      required this.position});

  final double vh;
  final double vw;
  final String day;
  final String date;
  final bool isCurrent;
  final String position;

  @override
  Widget build(BuildContext context) {
    BorderRadius customBorder;
    switch (position) {
      case "Begin":
        {
          customBorder = const BorderRadius.only(
            topLeft: Radius.circular(10),
          );
        }
      case "Middle":
        {
          customBorder = BorderRadius.zero;
        }
      case "End":
        {
          customBorder = const BorderRadius.only(
            topRight: Radius.circular(10),
          );
        }
      default:
        customBorder = BorderRadius.zero;
    }
    return Container(
      height: vh * 0.1,
      width: vw * 0.09,
      decoration: BoxDecoration(
          color: isCurrent
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.tertiary.withOpacity(0.5),
          borderRadius: customBorder),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.center,
              child: Text(
                day,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
          Align(
              alignment: Alignment.center,
              child: Text(
                date,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              )),
        ],
      ),
    );
  }
}

class observationRow extends StatefulWidget {
  const observationRow({
    super.key,
    required this.vh,
    required this.vw,
    required this.colorscheme,
    required this.rowPosition,
    required this.observationText,
  });

  final double vh;
  final double vw;
  final ColorScheme colorscheme;
  final String rowPosition;
  final String observationText;

  @override
  State<observationRow> createState() => _observationRowState();
}

class _observationRowState extends State<observationRow> {
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool?> ans1 = ValueNotifier<bool?>(null);
    ValueNotifier<bool?> ans2 = ValueNotifier<bool?>(null);
    ValueNotifier<bool?> ans3 = ValueNotifier<bool?>(null);
    ValueNotifier<bool?> ans4 = ValueNotifier<bool?>(null);
    ValueNotifier<bool?> ans5 = ValueNotifier<bool?>(null);
    ValueNotifier<bool?> ans6 = ValueNotifier<bool?>(null);
    ValueNotifier<bool?> ans7 = ValueNotifier<bool?>(null);

    String rowPosition = widget.rowPosition;

    BorderRadius rowBorderStart;
    BorderRadius rowBorderEnd;

    switch (rowPosition) {
      case "Begin":
        // Handle the "Begin" case
        rowBorderStart = BorderRadius.only(topLeft: Radius.circular(10));
        rowBorderEnd = BorderRadius.only(topRight: Radius.circular(10));

        break;
      case "Middle":
        // Handle the "Middle" case
        rowBorderStart = BorderRadius.zero;
        rowBorderEnd = BorderRadius.zero;
        break;
      case "End":
        // Handle the "End" case
        rowBorderStart = BorderRadius.only(bottomLeft: Radius.circular(10));
        rowBorderEnd = BorderRadius.only(bottomRight: Radius.circular(10));

        break;
      default:
        rowBorderStart = BorderRadius.zero;
        rowBorderEnd = BorderRadius.zero;
        // Handle other cases or default behavior
        break;
    }

    return Container(
      height: widget.vh * 0.1,
      width: widget.vw * 0.93,
      child: Row(
        children: [
          Container(
            height: widget.vh * 0.1,
            width: widget.vw * 0.286,
            decoration: BoxDecoration(
                color: widget.colorscheme.secondary.withOpacity(0.5),
                borderRadius: rowBorderStart),
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: Text(widget.observationText)),
          ),
          emptySpace(context, 0.002, null),

          YesNoContainer(ans: ans1, widget: widget, endBorder: BorderRadius.zero,),

          ValueListenableBuilder<bool?>(
            valueListenable: ans1,
            builder: (context, value, child) {
              return SizedBox
                  .shrink(); // Return an empty widget since we're only interested in the side effect of printing
            },
          ),

          // Text("$ans"),

          emptySpace(context, 0.002, null),

          YesNoContainer(ans: ans2, widget: widget, endBorder: BorderRadius.zero,),
          emptySpace(context, 0.002, null),
          YesNoContainer(ans: ans3, widget: widget, endBorder: BorderRadius.zero),
          emptySpace(context, 0.002, null),
          YesNoContainer(ans: ans4, widget: widget, endBorder: BorderRadius.zero),
          emptySpace(context, 0.002, null),
          YesNoContainer(ans: ans5, widget: widget, endBorder: BorderRadius.zero),
          emptySpace(context, 0.002, null),
          YesNoContainer(ans: ans6, widget: widget, endBorder: BorderRadius.zero),
          emptySpace(context, 0.002, null),
          YesNoContainer(ans: ans7, widget: widget, endBorder: rowBorderEnd),
        ],
      ),
    );
  }
}



class YesNoContainer extends StatefulWidget {
  final ValueNotifier<bool?> ans;

  const YesNoContainer({
    Key? key,
    required this.ans,
    required this.widget,
    required this.endBorder,
  }) : super(key: key);

  final observationRow widget;
  final BorderRadius endBorder;

  @override
  State<YesNoContainer> createState() => _YesNoContainerState();
}

class _YesNoContainerState extends State<YesNoContainer> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool?>(
      valueListenable: widget.ans,
      builder: (context, ans, child) {
        Color customColor =
            Theme.of(context).colorScheme.surface.withOpacity(0.5);
        Color noColor = Colors.black;
        Color yesColor = Colors.black;

        switch (ans) {
          case true:
            customColor = Colors.green.withOpacity(0.5);
            yesColor = Colors.green.shade900;
            break;
          case false:
            customColor = Colors.red.withOpacity(0.5);
            noColor = Colors.red;
            break;
          default:
            customColor =
                Theme.of(context).colorScheme.surface.withOpacity(0.5);
        }

        return Container(
          height: widget.widget.vh * 0.1,
          width: widget.widget.vw * 0.09,
          decoration:
              BoxDecoration(color: customColor, borderRadius: widget.endBorder),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    widget.ans.value = true;
                  },
                  icon: Icon(Icons.check, color: yesColor),
                  iconSize: 35,
                ),
                emptySpace(context, 0.005, null),
                IconButton(
                  onPressed: () {
                    widget.ans.value = false;
                  },
                  icon: Icon(Icons.close, color: noColor),
                  iconSize: 35,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
