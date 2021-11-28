import 'package:flutter/material.dart';
import 'flex_screen.dart';
// import './immutable_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      key: Key("key"),
      home: FlexScreen(),
    );
  }
}
