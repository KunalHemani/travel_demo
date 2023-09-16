import 'package:ex_form_db/pages/login_screen.dart';
import 'package:ex_form_db/pages/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:ex_form_db/pages/card_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WelcomeScreen(),
    );
  }
}
