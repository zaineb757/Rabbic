import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
class Audio extends StatefulWidget {
  @override
  _MyAudioState createState() => _MyAudioState();
}

class _MyAudioState extends State<Audio> {
  late AudioPlayer player;
  late AudioPlayer player2;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player2 = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    player2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await player.setAsset('assets/audios/cow.mp3');

                  player.play();
                },
                child: Text('Cow'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () async {
                  await player2.setAsset('assets/audios/horse.mp3');

                  player2.play();
                },
                child: Text('Horse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class BottomButton extends StatelessWidget {
  final BuildContext context;
  final String title;
  const BottomButton(this.context, { required this.title, Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height:50,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepOrangeAccent,//const Color(0xFF58CC02),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
