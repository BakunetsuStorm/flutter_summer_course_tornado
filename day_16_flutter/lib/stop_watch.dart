import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  late Timer timer;
  bool isTicking = true;

  void _onTick(Timer timer) {
    setState(() {
      ++seconds;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$seconds ${_secondsText()}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text('TOKI WO UGOKIDASU!'),
                onPressed: isTicking ? _startTimer : null,
              ),
              SizedBox(width: 20,

                ),
               TextButton(
                style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
              ), onPressed:  isTicking ? null: _stopTimer, child: Text('TOKI WO TOMARE!'),),
            ],
          )
        ],
      ),
    );
  }
  void _stopTimer(){
    timer.cancel();
    setState(() {
      isTicking = true;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      isTicking = false;
    });
  }

  String _secondsText() => seconds == 1 ? 'second' : 'seconds';
}
