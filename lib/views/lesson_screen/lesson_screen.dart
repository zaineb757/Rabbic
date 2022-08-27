import 'package:Rabbic/views/lesson_screen/components/bottom_button.dart';
import 'package:Rabbic/views/lesson_screen/components/grid_lesson.dart';
import 'package:Rabbic/views/lesson_screen/components/lesson_app_bar.dart';
import 'package:Rabbic/views/lesson_screen/components/list_lesson.dart';
import 'package:flutter/material.dart';
class LessonScreen extends StatefulWidget {
  const LessonScreen({Key ?key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LessonScreenState();
  }
}

class LessonScreenState extends State<LessonScreen> {
  double percent = 0.5;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var lessons = [
      GridLesson(checkButton: bottomButton(context, 'إستمر'),),
      ListLesson('إختر الجواب الصحيح', '',
        ['كلب', 'شعر', 'معزة'],
        checkButton: bottomButton(context, 'إستمر')

      ),

     // ListLesson('إختر الجواب الصحيح', '',
        //  ['مرحبا.', 'موسيقى', 'دودة'],
         // checkButton: bottomButton(context, 'تحقق')),
      //ListLesson('إختر الجواب الصحيح', '',
        //  ['شعر', 'فراشة', 'معزة'],
       //   checkButton: bottomButton(context, 'تحقق')),
    //  ListLesson('إختر الجواب الصحيح', '',
       //   ['حمار', 'كلب', 'موسيقى'],
        //  checkButton: bottomButton(context, 'تحقق')),
    ];

    return Scaffold(
      appBar: LessonAppBar(percent: percent),

      body: lessons[index],
    );

  }

  bottomButton(BuildContext context, String title) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 40,

        margin: const EdgeInsets.only(top:10,left: 10, right: 10, bottom: 10),
        child: ElevatedButton(

          onPressed: () {
            setState(() {
              if (percent < 1) {
                percent += 0.5;
                index++;
              } else {

                showDialog(

                  context: context,



                  builder: (BuildContext context) {

                    return Center(child:dialog('أحسنت عملا'));
                  },
                );
              }
            });
          },

          child: Text(
            title,


            style: const TextStyle(
              color: Colors.white,

              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepOrange,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  dialog(String title) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFd7ffb8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            dialogTitle(title),
            BottomButton(context, title: 'رجوع'),
          ],
        ),
      ),
    );
  }

  dialogTitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 15),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
