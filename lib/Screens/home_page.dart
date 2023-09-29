import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Screens/calls_screen.dart';
import 'package:whatsapp_ui/Screens/chat_screen.dart';
import 'package:whatsapp_ui/Screens/status_screen.dart';
import 'package:whatsapp_ui/Widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Constants.tabs.length,
      child: const Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            CustomAppbar(),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  ChatScreen(),
                  StatusScreen(),
                  CallsScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}