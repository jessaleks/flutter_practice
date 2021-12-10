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
  final laps = <int>[];

  void _onTick(Timer time) {
    setState(() {
      ++miliseconds;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 1), _onTick);
    laps.clear();

    setState(() {
      miliseconds = 0;
      isTicking = true;
    });
  }

  void _stopTimer() {
    timer?.cancel();

    setState(() {
      isTicking = false;
      miliseconds = 0;
    });
  }

  String _secondsText(int miliseconds) {
    final seconds = miliseconds / 1000;
    return '$seconds seconds';
  }

  // making sure to dispose of the timer when we close the screen
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _lap() {
    setState(() {
      laps.add(miliseconds);
      miliseconds = 0;
    });
  }

  Widget _buildLapDisplay() {
    return Scrollbar(
        child: ListView.builder(
          controller: ScrollController(),
          itemExtent: 60.0,
          itemCount: laps.length,
          itemBuilder: (context, index) {
            final ms = laps[index];
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 50.0),
              title: Text('Lap $laps{index + 1}'),
              trailing: Text(_secondsText(ms)),

            )
          },

    ));
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
            Text(_secondsText(miliseconds),
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
            Center(
              child: ElevatedButton(
                child: const Text("Lap"),
                onPressed: _lap,
              ),
            ),
            Expanded(
              child: _buildLapDisplay(),
            )
          ],
        ));
  }
}
