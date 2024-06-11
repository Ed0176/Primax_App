import 'package:flutter/material.dart';
import 'package:primaxapp/login_page.dart';
import 'home_page.dart'; // Import the home page

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'PoultryApp';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(), // Set HomePage as the home widget
    );
  }
}
