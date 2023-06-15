import 'package:flutter/material.dart';
import 'package:mi_primer_proyecto/src/loginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // ignore: avoid_unnecessary_containers
      home: Container(
        child: const Scaffold(
          body: LoginPage(),
        ),
      ),
    );
  }
}
