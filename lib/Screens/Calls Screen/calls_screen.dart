import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Screens/Calls%20Screen/recent_call_section.dart';
import 'package:whatsapp_ui/Widgets/floating_action_button_widget.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Constants.whatsAppGreen.withOpacity(1),
                  foregroundColor: Colors.white,
                  child: const Icon(
                    CupertinoIcons.paperclip,
                    size: 22,
                  ),
                ),
                title: const Text(
                  "Create call link",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                subtitle: const Text(
                  "Share a link for your WhatsApp call",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
              const RecentCallSection()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(
          onPressed: () {}, icon: Icons.add_ic_call_sharp),
    );
  }
}
