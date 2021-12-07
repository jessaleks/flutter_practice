import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  State createState() => StopWatchState();
}

class StopWatchState extends State<StopWatch> {
  int miliseconds = 0;
  Timer? timer;
  bool isTicking = true;

  void _onTick(Timer time) {
    setState(() {
      ++miliseconds;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
    setState(() {
      miliseconds = 0;
      isTicking = true;
    });
  }

  void _stopTimer() {
    timer?.cancel();

    setState(() {
      isTicking = false;
    });
  }

  String _secondsText() {
    final seconds = miliseconds / 1000;
    return '$seconds seconds';
  }

  // making sure to dispose of the timer when we close the screen
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stopwatch'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${miliseconds / 1000.0} ${_secondsText()}',
                style: Theme.of(context).textTheme.headline5),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const TextButton(
                  child: Text(
                    "Text Button",
                  ),
                  onPressed: null,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: isTicking ? null : _startTimer,
                    child: const Text("Start")),
                OutlinedButton(
                  onPressed: isTicking ? _stopTimer : null,
                  child: const Text("Stop"),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Center(
              child: ElevatedButton(
                child: Text("Lap"),
                onPressed: null,
              ),
            )
          ],
        ));
  }
}
