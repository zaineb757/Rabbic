import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class CenterDisplay extends StatelessWidget {
  const CenterDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('الحيوان الموجود في الصورة:',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600)),
          Image.asset('assets/images/horse.png', height: 150),
          Container(padding: const EdgeInsets.all(5)),

          Container(padding: const EdgeInsets.all(5)),
          Text('حصان',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600)),
        ],
      ),
    );
  }
}
class CenterDisplay1 extends StatelessWidget {
  const CenterDisplay1 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('اقرا الكلمة التالية؟',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600)),
          Container(padding: const EdgeInsets.all(5)),
          Container(
            child: speakButton('assets/audios/kalb.mp3'),
          ),
          Text('كلب',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600)),
        ],
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