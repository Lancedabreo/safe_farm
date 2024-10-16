import 'package:flutter/material.dart';
import 'package:lastt/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'GoogleFonts.poppins().fontFamily', // Optional
      ),
      home: const HomeScreen(),
    );
  }
}
