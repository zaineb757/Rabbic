
import 'package:Rabbic/views/course_screen/course_tree.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:convert';


import 'package:percent_indicator/linear_percent_indicator.dart';

import '../cour_screen/cour.dart';
import '../home_screen/components/bottom_navigator.dart';
import '../home_screen/components/stat_app_bar.dart';
import '../home_screen/home_screen.dart';
import '../lesson_screen/lesson_screen.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    padding: EdgeInsets.all(7),
    child: Column(
    children: [
      StatAppBar(

      ),
      Container(
        child:Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: new Icon(Icons.arrow_circle_left),
              highlightColor: Colors.deepOrange,
              onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );},
            ),

        ),
      ),
      Container(


        child: Text('المستويات',textAlign: TextAlign.center,

          style: const TextStyle(color: Color(0xFF4B4B4B), fontSize: 30,fontWeight: FontWeight.normal),
        ),

      ),
      Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.only(top: 10,bottom: 0,right: 20),
        child: Text('المستوى الأول',textAlign: TextAlign.right,

          style: const TextStyle(color: Colors.deepOrange, fontSize: 20,fontWeight: FontWeight.normal),
        ),

      ),

      Expanded(

          child:  GridView.count(
            primary: false,
            padding: const EdgeInsets.all(32),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,

            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FatimaScreen(),
                    ),
                  );
                },

                child:new Column(
                    children:[
                      new Container(
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        height: 100,

                        /*child: Icon(Icons.lock,size: 40,
                              color: Colors.red
                          ),*/
                        child:Text('درس1',

                          style: const TextStyle(color: Color(0xFF4B4B4B), fontSize: 15),
                        ),

                        margin: const EdgeInsets.only(bottom: 3),
                      ),

                      progressBar(1),
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
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        height: 100,
                        /*child: Icon(Icons.lock,size: 40,
                              color: Colors.red
                          ),*/
                        child:Text('إختبار1',

                          style: const TextStyle(color: Color(0xFF4B4B4B), fontSize: 15),
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
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },

                child:new Column(
                    children:[
                      new Container(
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        child: Icon(Icons.lock,size: 33,
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
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        child: Icon(Icons.lock,size: 33,
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
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        child: Icon(Icons.lock,size: 33,
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
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        child: Icon(Icons.lock,size: 33,
                            color: Colors.red
                        ),

                        margin: const EdgeInsets.only(bottom: 3),
                      ),

                      progressBar(0),
                    ]



                ),

              ),
            /*  GestureDetector(
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
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        child: Icon(Icons.lock,size: 33,
                            color: Colors.red
                        ),

                        margin: const EdgeInsets.only(bottom: 3),
                      ),

                      progressBar(0),
                    ]



                ),

              ),*/
             /* GestureDetector(
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
                        padding: const EdgeInsets.all(33),
                        color: Colors.grey[200],
                        child: Icon(Icons.lock,size: 33,
                            color: Colors.red
                        ),

                        margin: const EdgeInsets.only(bottom: 3),
                      ),

                      progressBar(0),
                    ]



                ),

              ),*/
            ],
          )
      ),
        //BottomNavigator(onPress: (int  ) {4;  }, currentIndex: 0,)
    ],
    ),
    ),
    );



  }

  progressBar( double percent) {
    return LinearPercentIndicator(

      animation: true,
      lineHeight: 17.0,
      animationDuration: 100,
      percent: percent,
      barRadius: const Radius.circular(10),
      backgroundColor: const Color(0xFFE5E5E5),
      progressColor: Colors.deepOrange,
    );
  }


}