import 'package:Rabbic/views/choose_language_screen/choose_language_screen.dart';
import 'package:Rabbic/views/login_screen/login_screen.dart';
import 'package:Rabbic/views/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'cour_screen/cour.dart';
import 'cour_screen/test.dart';
import 'home_screen/home_screen.dart';
import 'levels_screen/levels_tree.dart';

class MyDuolingo extends StatelessWidget {
  const MyDuolingo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) =>  LoginScreen(),
        '/choose-language': (context) => const ChooseLanguageScreen(),
        '/home': (context) => const HomeScreen(),
        '/cour1': (context) => const FatimaScreen(),
        '/cour2': (context) => const TestScreen(),
        '/levels': (context) =>  const LevelsScreen(),

      },
      debugShowCheckedModeBanner: false,
      title: 'Rabbic',
      // home: const WelcomeScreen(),
    );
  }
}