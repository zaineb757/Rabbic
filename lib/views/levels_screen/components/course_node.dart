import 'package:Rabbic/views/course_screen/components/course_popup.dart';
import 'package:Rabbic/views/lesson_screen/lesson_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CourseNode extends StatelessWidget {
  final String name;
  String? image;
  Color? color;
  int? crown;
  double? percent;

  CourseNode(this.name,
      {this.image, this.color, this.crown, this.percent, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },
          child: node(),
        ),
        const Padding(padding: EdgeInsets.all(15)),
        courseName(),
      ],
    );
  }

  node() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Stack(
          alignment: Alignment.center,

          children: [
            progressCircle(),
           // progressBar(),

            Image.asset(
              image ?? 'assets/images/egg.png',
              width: 20,
            ),
            subCrown(),

          ],
        ),

      ],
    );
  }

  progressCircle() {
    return Transform.rotate(
      angle: 2.7,
      child: CircularPercentIndicator(
        radius: 55.0,
        lineWidth: 10.0,
        percent: percent ?? 0,
        circularStrokeCap: CircularStrokeCap.square,
        progressColor: const Color(0xFFFFC800),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
  progressBar() {
    return LinearPercentIndicator(

      animation: true,
      lineHeight: 5.0,
     //animationDuration: 100,
      percent:  percent ?? 0,
      barRadius: const Radius.circular(10),
      backgroundColor: const Color(0xFFE5E5E5),
      progressColor: Colors.deepOrange,
    );
  }

  subCrown() {
    return Positioned(
      right: 0,
      bottom: 5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/crown.png', width: 40),
          Text(
            '${crown == null || crown == 0 ? '' : crown}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(0xFFB66E28),
            ),
          ),
        ],
      ),
    );
  }


  courseName() {
    return Text(name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18));
  }
}
