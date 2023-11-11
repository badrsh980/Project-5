import 'package:flutter/material.dart';
import 'package:project_5/pallete.dart';
import 'package:project_5/screens/registration_screen%20.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Palette.backgroundColor,
      ),
      home: const RegistrationScreen(),
    );
  }
}
