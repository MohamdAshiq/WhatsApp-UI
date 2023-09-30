import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Widgets/icon_button_widget.dart';

class EachChatScreen extends StatelessWidget {
  const EachChatScreen({super.key, required this.chatname, required this.icon});

  final String chatname;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Constants.whatsAppGreen.withOpacity(1),
        foregroundColor: Colors.white,
        titleSpacing: 0,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: Colors.grey[500],
            foregroundColor: Colors.white,
            child: Icon(
              icon,
            ),
          ),
          title: Text(
            chatname,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            "Group Members Details",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11.sp,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButtonWidget(onpressed: () {}, icon: Icons.call_sharp),
          IconButtonWidget(onpressed: () {}, icon: Icons.more_vert),
        ],
      ),
      bottomSheet: Container(
        height: 60.h,
        color: Colors.grey[300],
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: CupertinoTextField.borderless(
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
                ),
              ),
              CircleAvatar(
                radius: 25.r,
                foregroundColor: Colors.white,
                backgroundColor: Constants.whatsAppGreen.withOpacity(0.9),
                child: const Icon(
                  Icons.mic,
                  size: 23,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
