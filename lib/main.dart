import 'package:ayurveda_app/pages/aama_lakshana_assessment/ala_page.dart';
import 'package:ayurveda_app/pages/ayoga_lakshana/al_page.dart';
import 'package:ayurveda_app/pages/create_patient/create_patient_page.dart';
import 'package:ayurveda_app/pages/dashboard.dart';
import 'package:ayurveda_app/pages/login/login_page.dart';
import 'package:ayurveda_app/pages/patient_details.dart';
import 'package:ayurveda_app/pages/samyak_yoga_lakshan/syl_page.dart';
import 'package:ayurveda_app/pages/sarwanga/sarvanga.dart';
import 'package:ayurveda_app/pages/snehaJeeryamana_lakhan/sneha_jeer_lakshan.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/sla_page.dart';
import 'package:ayurveda_app/pages/sneha_lakshana_assessment/sneha_jeera_kala.dart';
import 'package:ayurveda_app/pages/theme_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: Color(0xffe9f5db),
          surface: Color(0xffcfe1b9),
          primary: Color(0xff87986a),
          secondary: Color(0xff97a97c),
          tertiary: Color(0xffb5c99a),

        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffE9F5DB)),
        useMaterial3: true,
      ),
      home: Scaffold(
        body:Sneha_jeerna_kala(),
      ),
    );
  }
}


