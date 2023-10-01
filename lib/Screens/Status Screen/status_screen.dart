import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Status%20Screen/my_status_section.dart';
import 'package:whatsapp_ui/Screens/Status%20Screen/recent_updates_section.dart';
import 'package:whatsapp_ui/Screens/Status%20Screen/viewed_updates_section.dart';
import 'package:whatsapp_ui/Widgets/floating_action_button_widget.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 5,
            right: 10,
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyStatusSection(),
              RecentUpdatesSection(),
              ViewedUpdatesSection(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        onPressed: () {},
        icon: Icons.camera_alt,
      ),
    );
  }
}
