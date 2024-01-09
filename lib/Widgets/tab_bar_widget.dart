import 'package:flutter/material.dart';
import '../Constants/constants.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      enableFeedback: false,
      indicatorColor: Constants.whiteColor,
      indicatorSize: TabBarIndicatorSize.tab,
    labelPadding: const EdgeInsets.all(5),
      tabs: List.generate(
        Constants.tabs.length,
        (index) => _tab(Constants.tabs[index]),
      ),
    );
  }

  Padding _tab(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: const TextStyle(
          color: Constants.whiteColor,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
