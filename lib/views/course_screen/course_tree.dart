import 'package:flutter/material.dart';

import 'components/course_node.dart';
import 'components/double_course_node.dart';
import 'components/triple_course_node.dart';

class CourseTree extends StatelessWidget {
  const CourseTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(5)),
          CourseNode(
            'حيوانات',
            image: 'assets/images/fish.png',
            crown: 1,
            percent: 0.5,
          ),
          const Padding(padding: EdgeInsets.all(5)),
          DoubleCourseNode(
            CourseNode(
              'ملابس',
              image: 'assets/images/lock.png',
              color: Colors.yellow,
              percent: 0,
              crown: 0,
            ),
            CourseNode(
              'ألوان',
              image: 'assets/images/lock.png',
              color: const Color(0xFFCE82FF),
              crown: 0,
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          DoubleCourseNode(
            CourseNode(
              'خضر',
              image: 'assets/images/lock.png',
              color: Colors.green,
              percent: 0,
              crown: 0,
            ),
            CourseNode(
              'فواكه',
              image: 'assets/images/lock.png',
              color: Colors.blue,
              crown: 0,
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          CourseNode(
            'جمل',
            image: 'assets/images/lock.png',
            color: Colors.redAccent,
            crown: 0,
          ),
          const Padding(padding: EdgeInsets.all(5)),
          DoubleCourseNode(
            CourseNode(
              'أماكن',
              image: 'assets/images/lock.png',
              color: Colors.yellow.shade500,
            ),
            CourseNode(
              'أدوات',
              image: 'assets/images/lock.png',
              color: Colors.grey,
              percent: 0,
            ),

          ),
          const Padding(padding: EdgeInsets.all(5)),
          DoubleCourseNode(
            CourseNode(
              'أرقام',
              image: 'assets/images/lock.png',
              color: Colors.purple.shade200,
              percent: 0,
            ),
            CourseNode(
              'مهن',
              image: 'assets/images/lock.png',
              color: Colors.pink,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 15)),
        ],
      ),
    );
  }
}
