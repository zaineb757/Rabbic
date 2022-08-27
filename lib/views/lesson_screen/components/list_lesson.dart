import 'package:Rabbic/views/lesson_screen/components/bottom_button.dart';
import 'package:Rabbic/views/lesson_screen/components/stage_changed.dart';
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
                  await player.setAsset('asset/audios/cow.mp3');

                  player.play();
                },
                child: Text('Cow'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () async {
                  await player2.setAsset('asset/audios/horse.mp3');

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


speakButton(AudioLink) {
  AudioPlayer playerkalb;
  playerkalb = AudioPlayer();
  AudioLink = 'assets/audios/kalb.mp3';
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: const Color(0xFF1CB0F6),
      borderRadius: BorderRadius.circular(10),
    ),
    child:   IconButton(
      icon: const Icon(Icons.volume_up),
      tooltip: 'Increase volume by 10',
      onPressed: () async {
        await playerkalb.setAsset(AudioLink);

        playerkalb.play();
      },
    ),
  );
}
class ListLesson extends StatelessWidget {
  Widget checkButton;
  String instructionText;
  String question;
  List<String> answers;


  ListLesson(this.instructionText, this.question, this.answers, { required this.checkButton,  Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        instruction(instructionText),
        const Padding(padding: EdgeInsets.only(top: 15)),
        questionRow(question),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                listChoice(answers[0]),
                const Padding(padding: EdgeInsets.only(bottom: 15),),
                listChoice(answers[1]),
                const Padding(padding: EdgeInsets.only(bottom: 15),),
                listChoice(answers[2]),
              ],
            ),
          ),
        ),

        const Spacer(),
        checkButton,
      ],
    );
  }

  listChoice(String title) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 15, right: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2.5,
          color: const Color(0xFFE5E5E5),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 13),
      ),
    );
  }

  questionRow(String question) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 5),
      child: Row(
        children: [
          speakButton(Audio),
          const Padding(padding: EdgeInsets.only(right: 15)),
          Text(
            question,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4B4B4B)),
          )
        ],
      ),
    );
  }



  instruction(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 15),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4B4B4B),
          ),
        ),
      ),
    );
  }
}
