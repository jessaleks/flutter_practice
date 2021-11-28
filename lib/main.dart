import 'package:flutter/material.dart';
import 'profile_screen.dart';
// import './immutable_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen(),
    );
  }
}
