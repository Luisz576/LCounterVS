import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lcountervs/settings/configs.dart';
import 'package:lcountervs/types/timer_state.dart';

class TimerTile extends StatefulWidget {
  const TimerTile({Key? key}) : super(key: key);

  @override
  State<TimerTile> createState() => _TimerTileState();
}

class _TimerTileState extends State<TimerTile> {
  Timer? timer;
  int seconds = Configs.timeOfGameInSeconds;

  void toggleTimer(){
    if(timer != null){
      timer!.cancel();
      timer = null;
      setWidgetTimer(TimerState.stopped);
    }else{
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          if(seconds == 0){
            stopTimer();
          }else{
            seconds--;
          }
        });
      });
      setWidgetTimer(TimerState.running);
    }
  }

  void stopTimer(){
    if(timer != null){
      timer!.cancel();
      timer = null;
    }
    setWidgetTimer(TimerState.finished);
  }

  void resetTimer(){
    if(timer != null){
      timer!.cancel();
      timer = null;
    }
    seconds = Configs.timeOfGameInSeconds;
    setWidgetTimer(TimerState.ready);
  }

  void setWidgetTimer(TimerState timerState){
    //TODO
    switch(timerState){
      case TimerState.ready:
      
      break;
      case TimerState.running:

      break;
      case TimerState.stopped:

      break;
      case TimerState.finished:

      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}