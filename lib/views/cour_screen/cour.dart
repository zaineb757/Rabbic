
import '../home_screen/components/explore_app_bar.dart';
import '../home_screen/components/leaderboard_app_bar.dart';
import '../home_screen/components/profile_app_bar.dart';
import '../home_screen/components/shop_app_bar.dart';
import '../home_screen/components/stat_app_bar.dart';

import 'package:flutter/material.dart';
import 'components/center_display.dart';
import 'components/get_started_button.dart';
import 'components/GetReturnButton.dart';


class FatimaScreen extends StatefulWidget {
  const FatimaScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FatimaScreenState();
  }
}
final List<PreferredSizeWidget> appBars = [
  StatAppBar(),
  ProfileAppBar(),
  LeaderboardAppBar(),
  ShopAppBar(),
  ExploreAppBar(),
];
class _FatimaScreenState extends State<FatimaScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars[currentIndex],
      body: Column(
        children: [
          const Expanded(child: CenterDisplay()),
          bottomButtons(),
        ],
      ),
    );
  }

  bottomButtons() {
    return Center(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GetStartedButton(context),
            GetReturndButton(context),
          ],
        ),
      ),
    );
  }


}

