import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class BottomTextFieldWidget extends StatelessWidget {
  const BottomTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField.borderless(
      placeholder: "Message",
      placeholderStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 17,
        color: Colors.grey,
      ),
      padding: const EdgeInsets.all(8),
      prefix: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.emoji_emotions_outlined,
          size: 27,
          color: Colors.grey[500],
        ),
      ),
      suffix: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.paperclip,
              size: 22,
              color: Colors.grey[500],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.camera_fill,
              size: 21,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
      cursorColor: Constants.whatsAppGreen,
    );
  }
}