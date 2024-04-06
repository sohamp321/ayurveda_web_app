
import 'package:ayurveda_app/pages/create_patient/components/poorvakarma.dart';
import 'package:flutter/material.dart';

class CreatePatientPage extends StatefulWidget {
  const CreatePatientPage({super.key});

  @override
  State<CreatePatientPage> createState() => _CreatePatientPageState();
}

class _CreatePatientPageState extends State<CreatePatientPage> {
  @override
  Widget build(BuildContext context) {
    return poorvaKarma();
  }
}