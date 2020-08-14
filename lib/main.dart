import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey(int fileNumber, Color colorIn) {
    return Expanded(
      child: FlatButton(
        color: colorIn,
        onPressed: () {
          final player = AudioCache();
          player.play('note$fileNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.yellow),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.purple),
              buildKey(5, Colors.orange),
              buildKey(6, Colors.green),
              buildKey(7, Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }
}
