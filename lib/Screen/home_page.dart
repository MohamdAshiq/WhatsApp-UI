import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Constants.tabs.length,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const CustomAppbar(),
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
