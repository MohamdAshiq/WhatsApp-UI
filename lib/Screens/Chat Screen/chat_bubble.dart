import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.msg,
    required this.isme,
  }) : super(key: key);

  final String msg;
  final bool isme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isme ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6.5, horizontal: 10),
          constraints: const BoxConstraints(
            minHeight: 25,
            minWidth: 10,
            maxWidth: 250,
            maxHeight: double.infinity,
          ),
          decoration: BoxDecoration(
            color: isme ? Colors.green.shade100 : Colors.white.withOpacity(0.4),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              msg,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}
