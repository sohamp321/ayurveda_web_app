import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:file_picker/file_picker.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Investigations extends StatefulWidget {
  const Investigations({super.key});

  @override
  State<Investigations> createState() => _InvestigationsState();
}

class _InvestigationsState extends State<Investigations> {
  Uint8List? _pdfData;
  String? _fileName;

  void _pickAndOpenPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      Uint8List pdfData =
          await file.readAsBytes(); // Read the file into a Uint8List
      setState(() {
        _pdfData = pdfData;
        _fileName =
            file.path.split('/').last; // Get the file name from the path
      }); // Update the UI to show the PDF
    }
  }

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Investigations",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffcfe1b9).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: _pdfData != null
                  ? SfPdfViewer.memory(
                      _pdfData!,
                    )
                  : TextButton(
                      onPressed: _pickAndOpenPdf,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upload PDF",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Icon(
                            Icons.upload,
                            color: Colors.black,
                            size: 30,
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(0, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Set the border radius here
                        ),
                      ),
                    ),
            ),
            // Display the file name
            if (_fileName != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _fileName!,
                  style: TextStyle(fontSize: 16),
                ),
              ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),

            Text(
              "Reports",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Color(0xffcfe1b9),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff97a97c).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Aligns children evenly
                children: [
                  Expanded(
                    // Wraps the first Column
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top:
                                    MediaQuery.of(context).size.height * 0.05)),
                        Text("Hameglobin : 12"),
                      ],
                    ),
                  ),
                  Expanded(
                    // Wraps the second Column
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top:
                                    MediaQuery.of(context).size.height * 0.05)),
                        Text("RBC : 140000 "),
                        // Add more report items here
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Back"))),
                Container(
                    child:
                        ElevatedButton(onPressed: () {}, child: Text("Next"))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
