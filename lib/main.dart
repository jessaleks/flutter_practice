import 'package:flutter/material.dart';
import 'package:flutter_practice/login_screen.dart';
import './stopwatch.dart';
import 'login_screen.dart';

void main() => runApp(const StopWatchApp());

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginScreen(key: Key("key")));
  }
}
