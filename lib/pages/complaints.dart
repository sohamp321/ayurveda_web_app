import 'package:ayurveda_app/pages/investigations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Complaints extends StatefulWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  Map<String, bool?> _statusMap = {
    'Avipaka (Indigestion)': null,
    'Trishna (Feeling thirsty)': null,
    'Aruchi (Anorexia)': null,
    'Gauravam (Heaviness)': null,
    'Aalasya (Laziness)': null,
    'Nidranaasha(sleeplessness)': null,
    'Atinidrata (excessive sleep)': null,
    'Ashasta-swapna- darshanam (Abnormal dreams)': null,
    'Tandra (somnolent/feeling sleepy)': null,
    'Shrama (Breathlessnesswhile exertion)': null,
    'Daurbalyam ( Weakness)': null,
    'Klamah (Fatigue)': null,
    'Sthaulyum (Obesity)': null,
    'Pitta-samulklesha (VitiatedPitta Features)': null,
    'Shleshma-samutklesha (Vitiated Ka Features)': null,
    'Panduta (Anaemic )': null,
    'Kandu (Itching)': null,
    'Pidka,Kotha (Skin eruptions)': null,
    'Daurgandhyatvam (Foul smellfrom sweat, stool, urine etc.)': null,
    'Arati (Disturbed mind)': null,
    'Avasadaka (Depressed Mind)': null,
    'Bala-pranasha/ Brumhanairapi (Loss of physical strength even after taking good diet)':
        null,
    'Varna-pranasha(Loss of glow)': null,
    'Abudhitvam(absent mindedness)': null,
    'Klaibyum (Lost Vitality)': null,
  };

  @override
  Widget build(BuildContext context) {
    int totalYes = _statusMap.values.where((value) => value == true).length;
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                "Complaints (Bahudosha)",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: Color(0xffe9f5db),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: MediaQuery.of(context).size.width,
                child: DataTable(
                  border: TableBorder.all(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.transparent),
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xffb5c99a)),
                  columns: [
                    DataColumn(
                        label: Text(
                      'Complaint',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataColumn(
                        label: Text('Status',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                  rows: _statusMap.entries.map((entry) {
                    return DataRow(cells: [
                      DataCell(Text(entry.key)),
                      DataCell(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio<bool?>(
                              value: true,
                              groupValue: entry.value,
                              onChanged: (bool? value) {
                                setState(() {
                                  _statusMap[entry.key] = value;
                                });
                              },
                            ),
                            Text('Yes'),
                            SizedBox(
                              width: 20,
                            ),
                            Radio<bool?>(
                              value: false,
                              groupValue: entry.value,
                              onChanged: (bool? value) {
                                setState(() {
                                  _statusMap[entry.key] = value;
                                });
                              },
                            ),
                            Text('No'),
                          ],
                        ),
                      ),
                    ]);
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$totalYes/25 factors present", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffb5c99a)),
                    child: Text("Back", style: TextStyle(color: Colors.black))),
              ),
              SizedBox(
                width: 20,
              ),
              // Inside the Complaints widget, find the "Next" button and modify its onPressed method

Container(
 height: 40,
 width: 100,
 child: ElevatedButton(
    onPressed: () {
      Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>Investigations(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ));
    },
    child: Text("Next", style: TextStyle(color: Colors.black)),
    style: ElevatedButton.styleFrom(backgroundColor: Color(0xffb5c99a)),
 ),
),

            ],
          ),
        ],
      ),
    );
  }
}
