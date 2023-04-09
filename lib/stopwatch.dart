import 'package:flutter/material.dart';
import 'dart:async';

class StopwatchMenu extends StatefulWidget {
  @override
  _StopwatchMenuState createState() => _StopwatchMenuState();
}

class _StopwatchMenuState extends State<StopwatchMenu> {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;
  List<String> _laps = [];
  bool isRunning = false;

  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        isRunning = true;
        _stopwatch.start();
      });
    });
  }

  void _stopTimer() {
    isRunning = false;
    _timer?.cancel();
  }

  void _resetTimer() {
    setState(() {
      _stopwatch.stop();
      _stopwatch.reset();
      _laps.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    String _milliseconds = (_stopwatch.elapsedMilliseconds % 1000).toString().padLeft(3, '0');
    String _seconds = (_stopwatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');
    String _minutes = (_stopwatch.elapsed.inMinutes % 60).toString().padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_minutes:$_seconds:$_milliseconds',
              style: TextStyle(fontSize: 48.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: isRunning ? null : _startTimer,
                  child: Text(_stopwatch.isRunning ? 'Resume' : 'Start'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: isRunning ? _stopTimer : null,
                  child: Text('Stop'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed:  _resetTimer,
                  child: Text('Reset'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _laps.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Text('Lap ${index + 1}'),
                    title: Text('${_laps[index]} ms'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}