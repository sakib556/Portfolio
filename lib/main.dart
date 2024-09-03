import 'package:flutter/material.dart';
import 'package:portfolio/login_screen.dart';
import 'package:portfolio/portfolio_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}

//
//home screen