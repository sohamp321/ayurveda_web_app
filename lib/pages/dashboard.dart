import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class PhysicianDashboard extends StatefulWidget {
  const PhysicianDashboard({super.key});

  @override
  State<PhysicianDashboard> createState() => _PhysicianDashboardState();
}

class _PhysicianDashboardState extends State<PhysicianDashboard> {
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
                name: 'Drishti Agrawal',
                radius: 25,
                fontsize: 18,
                random: true,
              ),
            ),
            Text(
              "Drishti Agrawal",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // Remove default padding
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 30.0, // Adjust radius as needed
                    backgroundImage: AssetImage(
                        'assets/profile_picture.jpg'), // Replace with your asset image
                  ),
                  SizedBox(height: 10.0),
                  Text('User Name'),
                  Text('user@email.com'),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Option 1'),
              onTap: () {
                // Handle 'Option 1' tap event
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Option 2'),
              onTap: () {
                // Handle 'Option 2' tap event
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: SingleChildScrollView(
              scrollDirection:
                  Axis.vertical, // Set scroll direction to vertical
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                width:
                    MediaQuery.of(context).size.width, // Adjust width as needed
                child: DataTable(
                  
                  border: TableBorder.all(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.transparent),
                  headingRowColor: MaterialStateColor.resolveWith((states) => const Color.fromARGB(255, 170, 171, 171)),
                  columns: [
                    
                    DataColumn(label: Text('UHID', style: TextStyle(fontWeight: FontWeight.bold),)),
                    DataColumn(label: Text('Patient Name', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Medication Going on', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('On going day', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text("Edit Patient Assessment", style: TextStyle(fontWeight: FontWeight.bold)))
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
