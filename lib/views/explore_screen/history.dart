import 'package:Rabbic/views/lesson_screen/components/bottom_button.dart';
import 'package:Rabbic/views/lesson_screen/components/stage_changed.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../home_screen/home_screen.dart';
import '../lesson_screen/components/lesson_app_bar.dart';
import 'explore_screen.dart';
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

          color: Colors.white,
          padding: EdgeInsets.all(7),
          child: Column(
              children: [
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
                /* Container(
          child:Image.asset('images/music_notes.jpg.')
      ),*/
                /*Container(
          child:IconButton(
            icon: const Icon(Icons.music_note_sharp,size: 40, color: Colors.deepOrange,),
            tooltip: 'play', onPressed: () {  },
          ),
      ),*/
                Container(padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 50, right: 10, bottom: 10)),

                Container(
                    child:Text('قصة اليوم', style: TextStyle(color:Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 25),)
                ),
                Container(padding: const EdgeInsets.all(10),

                    margin: const EdgeInsets.only(left: 50, right: 10, bottom: 10)),
                Container(
                    child:Image.asset('images/gold_chicken.png.',height: 200,width: 500,),
                ),
                //speakButton('assets/audios/animals_song.mp3'),
                //textTitle(),
                Container(padding: const EdgeInsets.all(10),

                    margin: const EdgeInsets.only(left: 50, right: 10, bottom: 10)),
                /*  RichText(
            text: TextSpan(
              text: '',
              style: TextStyle(color: Colors.grey, fontSize: 18.0),
              children: <TextSpan>[
                TextSpan(
                    text: 'حيواناتٌ حيواناتْ بين الناس وفي الغاباتْ حيواناتٌ حيواناتْ بين الناس وفي الغاباتْ تعطي جمالا للحياةْ يالَ جمالِ الكائناتْ تعطي جمالا للحياةْ يالَ جمالِ الكائناتْ بجمالي ترتاحُ قلوبْ أنا قطٌّ جدا محبوبْ مشهورٌ جدا وأليفْ فأنا خفيفُ الظلِّ ظريفْ حصانٌ عربيٌّ وأصيلْ صوتي يا أطفالُ صهيلْ أجري أعدو بالفُرسانْ في الصحراءِ وفي الوِديانْ لي جناحانِ ولا أطيرْ أنا الدجاجة يا صغيرْ صيصاني ما أحلاهُمْ خلفي تصطفُّ وتسيرْ حيواناتٌ حيواناتْ بين الناس وفي الغاباتْ حيواناتٌ حيواناتْ بين الناس وفي الغاباتْ تعطي جمالا للحياةْ يالَ جمالِ الكائناتْ تعطي جمالا للحياةْ يالَ جمالِ الكائناتْ خلفَ الراعي مع القَطيعْ محبوبٌ جدا ووَديعْ خروفٌ وردائي صوفْ مشهورٌ جدا معروفْ كلب للإنسان وفيْ وسريعٌ جدا وذكيْ  دوما أقفُ بباب الدارْ أحرُسُها ليلاً ونهارْ بقرة أُطعِمهُ الانسانْ أنا مصدرُ هذي الألبانْ هناكَ في المراعي بعيدة حيُّوها البقرة السعيدة',

                    style: TextStyle(fontWeight: FontWeight.bold, )
                ),
              ],
            ),
          ),*/
                Container(
                  width: 300,
                  child: Text(
                    "يُحكى أنّ مزارعاً وزوجته كانا يملكان في مزرعتهما دجاجة جميلة ذهبية اللون، وكانت هذه الدجاجة تضع كل يوم بيضة ذهبية يبيعانها ويسدا بها حاجتهما، إلى أن فكّر هذا المزارع يوماً بأن يقوم بذبح الدجاجة لاستخراج ما يحويه بطنها من بيضات ذهبية يبيعها ويحصل من خلالها على الكثير من المال، أخبر المزارع زوجته بما ينويه فحاولت نصحه بألّا يفعل ذلك إلّا أنّه لم يقبل، أعد المزارع السكين وشقّ بطن الدجاجة للحصول على البيضات الذهبية التي تخيّلها، فلم يجد فيه إلأ الدم والأحشاء، فجلس وزوجته يبكيان ويندبان حظهما، فقد خسرا بسبب الطمع دجاجتهما الذهبية التي كانت مصدر رزقهما اليومي",


                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right
                    ,
                    style: TextStyle(color: Colors.grey[800], fontSize: 15.0, fontWeight: FontWeight.bold),
                    maxLines: 30,
                  ),
                ),
              ]





          ),

        ));

  }

  textTitle(){
    return  Container(
        child:Text('الكلمات', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
    );
  }



  speakButton(AudioLink) {
    AudioPlayer playersong;
    playersong = AudioPlayer();
    AudioLink = 'assets/audios/animals_song.mp3';
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(

            child:  IconButton(
              icon: const Icon(Icons.play_circle,size: 40,color: Colors.green,),
              tooltip: 'play',
              onPressed: () async {
                await playersong.setAsset(AudioLink);

                playersong.play();

              },
            ),
          ),
          /*   Container(padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 50, right: 10, bottom: 5)),*/
          Expanded(
            child:   new Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                icon: const Icon(Icons.stop_circle_rounded,size: 40,color: Colors.red),
                tooltip: 'stop',
                onPressed: () async {
                  await playersong.setAsset(AudioLink);

                  playersong.stop();

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
  stopButton(AudioLink) {
    AudioPlayer playersong;
    playersong = AudioPlayer();
    AudioLink = 'assets/audios/animals_song.mp3';
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xFF1CB0F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child:   IconButton(
        icon: const Icon(Icons.stop),
        tooltip: 'play',
        onPressed: () async {
          await playersong.setAsset(AudioLink);

          playersong.stop();

        },
      ),
    );
  }
}