import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/floating_action_button_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 15,
        itemBuilder: (context, index) => ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 5,
          ),
          onTap: () {},
          horizontalTitleGap: 16,
          leading: CircleAvatar(
            backgroundColor: Colors.grey[400],
            foregroundColor: Colors.white,
            radius: 25,
            child: const Icon(
              Icons.person,
              size: 27,
            ),
          ),
          title: Text(
            "Chat ${index + 1}",
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          subtitle: Text(
            "Description ${index + 1}",
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        onPressed: () {},
        icon: Icons.message,
      ),
    );
  }
}
