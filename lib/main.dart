import 'package:flutter/material.dart';
import 'flex_screen.dart';
// import './immutable_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green[600],
          appBarTheme:
              const AppBarTheme(toolbarTextStyle: TextStyle(fontSize: 24))),
      key: const Key("key"),
      home: const FlexScreen(),
    );
  }
}
