import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Screens/Calls%20Screen/calls_screen.dart';
import 'package:whatsapp_ui/Screens/Chat%20Screen/chat_screen.dart';
import 'package:whatsapp_ui/Screens/Updates%20Screen/updates_screen.dart';
import 'package:whatsapp_ui/Widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Constants.tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [const CustomAppbar()],
          body: const TabBarView(
            children: [
              ChatScreen(),
              UpdatesScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
