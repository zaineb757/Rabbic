import 'package:flutter/material.dart';

class StatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StatAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.white,
      elevation: 1.5,
      leading: heart(),
      title: Row(
        children: [
          //const Padding(padding: EdgeInsets.all(30)),
          //crown(136),
          //const Padding(padding: EdgeInsets.all(30)),

        ],
      ),
      actions: [

        crown(136),
        const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        streak(31),
      ],
    );
  }

  Widget heart() {
    return Row(
      children: [
        Container(padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.only(left: 10)),
        Image.asset(
          'assets/images/heart.png',
          width: 25,
        ),


        const Padding(
          padding: EdgeInsets.all(0),
        ),
        Image.asset('assets/images/infinity.png', width: 20),

        const Padding(
          padding: EdgeInsets.all(0),
        ),
      ],
    );
  }

  Widget streak(int n) {
    return Row(
      children: [

        Image.asset(
          'assets/images/streak.png',
          width: 20,
        ),

        Text(
          '$n',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xFFFF9600),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
      ],
    );
  }

  Widget crown(int n) {
    return Row(
      children: [
        Image.asset(
          'assets/images/case.png',
          width: 25,
        ),
        const Padding(
          padding: EdgeInsets.all(4),
        ),
        Text(
          '$n XP',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.blueGrey,
          ),
        )
      ],
    );
  }

  /*Widget flag() {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 18, bottom: 18),
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/images/korea-flag-transparent.png'),
          // fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2.5,
          color: const Color(0xFFE5E5E5),
        ),
        color: Colors.grey.shade100,
      ),
      child: null /* add child content here */,
    );
  }*/
}
