import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      Xylophone(),
    );

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded drawKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              drawKey(color: Colors.red, soundNumber: 1),
              drawKey(color: Colors.orange, soundNumber: 2),
              drawKey(color: Colors.yellow, soundNumber: 3),
              drawKey(color: Colors.green, soundNumber: 4),
              drawKey(color: Colors.blue, soundNumber: 5),
              drawKey(color: Colors.indigo, soundNumber: 6),
              drawKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
