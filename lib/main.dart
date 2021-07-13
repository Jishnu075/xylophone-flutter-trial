import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //
// Function to play multiple sounds from local assets
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

//
// Function to build each widget
  Expanded buildKey({int soundKey = 0, Color colorKey = Colors.black}) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        onPressed: () {
          playSound(soundKey);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorKey),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
      ),
    );
  }
//
//

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colorKey: Colors.red, soundKey: 1),
              buildKey(colorKey: Colors.orange, soundKey: 2),
              buildKey(colorKey: Colors.yellow, soundKey: 3),
              buildKey(colorKey: Colors.green, soundKey: 4),
              buildKey(colorKey: Colors.blue, soundKey: 5),
              buildKey(colorKey: Colors.indigo, soundKey: 6),
              buildKey(colorKey: Colors.purple, soundKey: 7),
            ],
          ),
        ),
      ),
    );
  }
}
