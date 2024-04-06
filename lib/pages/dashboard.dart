import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:data_table_2/data_table_2.dart';
import 'patient_details.dart'; // Make sure to import your PatientDetails page

class PhysicianDashboard extends StatefulWidget {
  const PhysicianDashboard({Key? key}) : super(key: key);

  @override
  State<PhysicianDashboard> createState() => _PhysicianDashboardState();
}

class _PhysicianDashboardState extends State<PhysicianDashboard> {
  void _navigateToPatientDetails(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => PatientDetails(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    ));
  }

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: Color(0xffe9f5db),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: SingleChildScrollView(
              scrollDirection:
                  Axis.vertical, // Set scroll direction to vertical
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width:
                    MediaQuery.of(context).size.width, // Adjust width as needed
                child: DataTable(
                  border: TableBorder.all(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.transparent),
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xffb5c99a)),
                  columns: [
                    DataColumn(
                        label: Text(
                      'UHID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataColumn(
                        label: Text('Patient Name',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Medication Going on',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('On going day',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("Edit Patient Assessment",
                            style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                  rows: List<DataRow>.generate(
                    20,
                    (index) => DataRow(
                      cells: [
                        DataCell(Text(
                          'UHID$index',
                          textAlign: TextAlign.center,
                        )),
                        DataCell(Text('Patient Name $index')),
                        DataCell(Text(
                          'Medication $index',
                          textAlign: TextAlign.center,
                        )),
                        DataCell(Text('Day $index')),
                        DataCell(IconButton(
                          icon: Icon(Icons.edit_sharp),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Clicked")));
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToPatientDetails(context);
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color(0xffb5c99a),
      ),
    );
  }
}
