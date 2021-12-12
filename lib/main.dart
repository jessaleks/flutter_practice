import 'package:flutter/material.dart';
import 'package:flutter_practice/login_screen.dart';
import 'package:flutter_practice/stopwatch.dart';
// import './stopwatch.dart';
import 'login_screen.dart';

void main() => runApp(const StopWatchApp());

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const LoginScreen(),
        LoginScreen.route: (context) => const LoginScreen(),
        StopWatch.route: (context) => StopWatch(),
      },
      initialRoute: '/',
    );
  }
}
