import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Constants.tabs.length,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Constants.whatsAppGreen,
              foregroundColor: Constants.whiteColor,
              floating: true,
              pinned: true,
              snap: true,
              expandedHeight: 95.h,
              title: const Text(
                Constants.appname,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              bottom: TabBar(
                indicatorColor: Constants.whiteColor,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: List.generate(
                  Constants.tabs.length,
                  (index) => _tab(
                    Constants.tabs[index],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => Container(),
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

Padding  _tab(String title) {
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
}
