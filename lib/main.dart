import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

Expanded buildKey(Color color, int soundnum) {
  return Expanded(
    child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundnum);
        }),
  );

}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                    buildKey(Colors.red,1),
                    buildKey(Colors.orange,2),
                    buildKey(Colors.yellow,3),
                    buildKey(Colors.green,4),
                    buildKey(Colors.blue,5),
                    buildKey(Colors.teal,6),
                    buildKey(Colors.purple,7),

    ],
    ),
    ),
    ),
    );
    }
}
