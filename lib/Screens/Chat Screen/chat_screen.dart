import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Chat%20Screen/each_chat_screen.dart';
import 'package:whatsapp_ui/Screens/add_contacts_page.dart';
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
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EachChatScreen(
              chatname: "Chat ${index + 1}",
              icon: Icons.person,
            ),
          )),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 5,
          ),
          horizontalTitleGap: 16,
          trailing: const Text(
            "3:30 PM",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
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
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          subtitle: Text(
            "Description ${index + 1}",
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AddContactsPage(),
          ),
        ),
        icon: Icons.message,
      ),
    );
  }
}
