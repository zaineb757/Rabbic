import 'package:flutter/material.dart';

class CenterDisplay extends StatelessWidget {
  const CenterDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Text('Rabbic App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepPurple.shade600)),
          Container(padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.only(left: 50, right: 10, bottom: 100)),
          Image.asset('assets/images/rabbit_logo.png', height: 200),
          Container(padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.only(left: 50, right: 10, bottom: 50)),



          Container(padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 50, right: 10, bottom: 10)),
          Text('مرحبا بكم في رابيك ',
              style: TextStyle(fontSize: 35, color: Colors.orangeAccent)),






        ],
      ),
    );
  }
}
