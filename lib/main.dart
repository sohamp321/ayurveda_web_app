import 'package:ayurveda_app/pages/aama_lakshana_assessment/ala_page.dart';
import 'package:ayurveda_app/pages/complaints.dart';
import 'package:ayurveda_app/pages/create_patient/create_patient_page.dart';
import 'package:ayurveda_app/pages/dashboard.dart';
import 'package:ayurveda_app/pages/investigations.dart';
import 'package:ayurveda_app/pages/login_screen.dart';
import 'package:ayurveda_app/pages/patient_details.dart';
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

        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffE9F5DB)),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Ala(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
