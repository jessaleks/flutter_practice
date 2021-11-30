import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  State createState() => StopWatchState();
}

class StopWatchState extends State<StopWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
      ),
      body: Center(
        child: Text(
          '0 seconds',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
