import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/constants.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      enableFeedback: false,
      indicatorColor: Constants.whiteColor,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: List.generate(
        Constants.tabs.length,
        (index) => _tab(
          Constants.tabs[index],
        ),
      ),
    );
  }

  Padding _tab(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: TextStyle(
          color: Constants.whiteColor,
          fontSize: 14.5.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
