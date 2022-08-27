import 'package:Rabbic/views/explore_screen/history.dart';
import 'package:Rabbic/views/explore_screen/song.dart';
import 'package:Rabbic/views/lesson_screen/lesson_screen.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const Padding(padding: EdgeInsets.only(bottom: 0)),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SongScreen(),
              ),
            );
          },
          child: newsBox(
              'assets/images/sing.png',
              'غني معي',
              '',
              ''),
        ),


        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HistoryScreen(),
              ),
            );
          },
          child: newsBox(
              'assets/images/read.png',
              'إقرأ معي',
              '',
              ''),
        ),


        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },
          child: newsBox(
              'assets/images/puzzel.png',
              'حزر و فزر',
              '',
              ''),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },
          child: newsBox(
              'assets/images/game shop.png',
              'متجر',
              '',
              ''),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },
          child: newsBox(
              'assets/images/take care.png',
              'إهتم بي',
              '',
              ''),
        ),



        const Padding(padding: EdgeInsets.only(top: 15))
      ],
    );
  }

  newsBox(String image, String title, String description, String date) {
    return Container(
      // height: 100,
      margin: const EdgeInsets.only(bottom: 5, top: 15, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2.5,
          color: const Color(0xFFE5E5E5),
        ),
      ),
      child: Column(
        children: [
          imageBox(image),
          newsTitle(title),
         // newsDescription(description),
          //newsDate(date),
        ],
      ),
    );
  }

  newsDate(String date) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          date,
          style: const TextStyle(
            fontSize: 15,
            // fontWeight: FontWeight.bold,
            color: Color(0xFFAFAFAF),
          ),
        ),
      ),
    );
  }

  newsDescription(String description) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 10),
      child: Text(
        description,
        style: const TextStyle(
          fontSize: 17,
          // fontWeight: FontWeight.bold,
          color: Color(0xFF777777),
        ),
      ),
    );
  }

  newsTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 10,right: 15),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4B4B4B),
          ),
        ),
      ),
    );
  }

  imageBox(String image) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 15, right: 15, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2.5,
          color: const Color(0xFFE5E5E5),
        ),
      ),
      child: Image.asset(
        image,
        height: 150,
        width: double.infinity,
      ),
    );
  }
}
