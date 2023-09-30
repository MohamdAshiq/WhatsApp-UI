import 'package:flutter/material.dart';

class EachChatScreen extends StatelessWidget {
  const EachChatScreen({super.key, required this.chatname, required this.icon});

  final String chatname;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(chatname),
   
      ),
    );
  }
}