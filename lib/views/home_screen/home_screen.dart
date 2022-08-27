import 'package:Rabbic/views/course_screen/course_tree.dart';
import 'package:Rabbic/views/explore_screen/explore_screen.dart';
import 'package:Rabbic/views/home_screen/components/explore_app_bar.dart';
import 'package:Rabbic/views/home_screen/components/leaderboard_app_bar.dart';
import 'package:Rabbic/views/home_screen/components/shop_app_bar.dart';
import 'package:Rabbic/views/home_screen/components/stat_app_bar.dart';
import 'package:Rabbic/views/home_screen/components/bottom_navigator.dart';
import 'package:Rabbic/views/leaderboard_screen/leaderboard_screen.dart';
import 'package:Rabbic/views/profile_screen/profile_screen.dart';
import 'package:Rabbic/views/shop_screen/shop_screen.dart';
import 'package:flutter/material.dart';

import '../levels_screen/levels_tree.dart';
import 'components/profile_app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final screens = [
      CourseTree(),
      ProfileScreen(),
      LeaderboardScreen(),
     // LevelsScreen(),
      ExploreScreen(),

    ];

    final List<PreferredSizeWidget> appBars = [
      StatAppBar(),
      ProfileAppBar(),
      LeaderboardAppBar(),
     // StatAppBar(),
      ExploreAppBar(),

    ];

    return Scaffold(
      appBar: appBars[currentIndex],
      bottomNavigationBar: BottomNavigator(currentIndex: currentIndex, onPress: onBottomNavigatorTapped),
      body: screens[currentIndex],
      );
  }

  void onBottomNavigatorTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }


}
