import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Widgets/tab_bar_widget.dart';

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
              bottom: const TabBarWidget()
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

}
