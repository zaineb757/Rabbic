import 'dart:convert';

import 'package:Rabbic/views/lesson_screen/components/bottom_button.dart';
import 'package:Rabbic/views/lesson_screen/components/stage_changed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
class Audio extends StatefulWidget {
  @override
  _MyAudioState createState() => _MyAudioState();
}

class _MyAudioState extends State<Audio> {
  late AudioPlayer  player;
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
List _items = [];
Future<void> readJson() async {
  final String response = await rootBundle.loadString('assets/answers.json');
  final data = await json.decode(response);

  _items = data["answers"];

}
class GridLesson extends StatelessWidget {
  final Widget checkButton;
  const GridLesson({ required this.checkButton,  Key ?key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(

      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        instruction('أختر الصورة الصحيحة'),
        questionRow('دجاجة'),
        GridView.count(
          primary: false,
          shrinkWrap: true,

          padding: const EdgeInsets.only(left: 15, right: 15),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          childAspectRatio: 0.85,
          children: [
            gridChoice('assets/images/car.png', ''),
            gridChoice('assets/images/hammer1.png', ''),
            gridChoice('assets/images/chicken.png', ''),
            gridChoice('assets/images/tree1.png', ''),
          ],

        ),
       // Container(padding: const EdgeInsets.all(9),
            //margin: const EdgeInsets.only(left: 10, right: 10, bottom: 30)),
       // if(_items[0]['answer']= gridChoice('assets/images/chicken.png', ''))
        checkButton

      ],

    );
  }

  gridChoice(String image, String title) {
    var colorBorder=Colors.grey;
    return Container(
      height: 10,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2.5,
          color: colorBorder,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
        child:GestureDetector(
          // Image tapped
          child: Image.asset(
            image, scale: 0.5,
            fit: BoxFit.cover, // Fixes border issues
            width: 110.0,
            height: 110.0,
          ),
          onTap: () {
            if(image!='assets/images/chicken.png')
              print("bad");
            
              colorBorder=Colors.red;
               Border.all(
                width: 2.5,
                color: Colors.red,
              );


          },
        )
            // padding: const EdgeInsets.all(5),
              //child: Center(child: Image.asset(image, scale: 0.5))
    ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 5),
            child: Text(
              title,
              style: const TextStyle(color: Color(0xFF4B4B4B), fontSize: 11),
            ),

          ),

        ],
      ),
    );
  }

  questionRow(String question) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 10,top: 10),
      child: Row(
        children: [

          const Padding(padding: EdgeInsets.only(right: 120)),
          Text(
            question,
          textAlign: TextAlign.center,
            style: const TextStyle(

                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.red),
          )
        ],
      ),
    );
  }
  speakButton() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xFF1CB0F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.volume_up,
        color: Colors.white,
        size: 35,
      ),
    );
  }

  instruction(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 50),
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

// bottomButton(BuildContext context, String title) {
//   return Center(
//     child: Container(
//       width: double.infinity,
//       height: 50,
//       margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//       child: ElevatedButton(
//         onPressed: () {
//           StageChanged(0.5).dispatch(context);
//           // Navigator.pushNamed(context, '/choose-language');
//         },
//         child: Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         style: ElevatedButton.styleFrom(
//           primary: const Color(0xFF58CC02),
//           elevation: 5,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//         ),
//       ),
//     ),
//   );
// }

}
