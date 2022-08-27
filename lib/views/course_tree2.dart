/*import 'package:flutter/material.dart';

import 'components/course_node.dart';
import 'components/double_course_node.dart';
import 'components/triple_course_node.dart';

class CourseTree extends StatelessWidget {
  const CourseTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,

      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },

          child:new Column(
              children:[
                new Container(
                  padding: const EdgeInsets.all(32),
                  color: Colors.grey[200],
                  child: Icon(Icons.lock,size: 40,
                      color: Colors.red
                  ),

                  margin: const EdgeInsets.only(bottom: 3),
                ),

                progressBar(0.2),
              ]



          ),

        ),

        GestureDetector(

          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },

          child:new Column(
              children:[
                new Container(
                  padding: const EdgeInsets.all(32),
                  color: Colors.grey[200],
                  child: Icon(Icons.lock,size: 40,
                      color: Colors.red
                  ),

                  margin: const EdgeInsets.only(bottom: 3),
                ),

                progressBar(0),
              ]



          ),

        ),

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },

          child:new Column(
              children:[
                new Container(
                  padding: const EdgeInsets.all(32),
                  color: Colors.grey[200],
                  child: Icon(Icons.lock,size: 40,
                      color: Colors.red
                  ),

                  margin: const EdgeInsets.only(bottom: 3),
                ),

                progressBar(0),
              ]



          ),

        ),

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },

          child:new Column(
              children:[
                new Container(
                  padding: const EdgeInsets.all(32),
                  color: Colors.grey[200],
                  child: Icon(Icons.lock,size: 40,
                      color: Colors.red
                  ),

                  margin: const EdgeInsets.only(bottom: 3),
                ),

                progressBar(0),
              ]



          ),

        ),

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },

          child:new Column(
              children:[
                new Container(
                  padding: const EdgeInsets.all(32),
                  color: Colors.grey[200],
                  child: Icon(Icons.lock,size: 40,
                      color: Colors.red
                  ),

                  margin: const EdgeInsets.only(bottom: 3),
                ),

                progressBar(0),
              ]



          ),

        ),

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LessonScreen(),
              ),
            );
          },

          child:new Column(
              children:[
                new Container(
                  padding: const EdgeInsets.all(32),
                  color: Colors.grey[200],
                  child: Icon(Icons.lock,size: 40,
                      color: Colors.red
                  ),

                  margin: const EdgeInsets.only(bottom: 3),
                ),

                progressBar(0),
              ]



          ),

        ),
      ],
    )
  }
}*/
