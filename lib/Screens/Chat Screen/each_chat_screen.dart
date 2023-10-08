import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Provider/msg_controller.dart';
import 'package:whatsapp_ui/Screens/Chat%20Screen/chat_bubble.dart';
import 'package:whatsapp_ui/Widgets/bottom_textfield_widget.dart';
import 'package:whatsapp_ui/Widgets/encryption_msg_widget.dart';
import 'package:whatsapp_ui/Widgets/icon_button_widget.dart';

class EachChatScreen extends StatelessWidget {
  const EachChatScreen({super.key, required this.chatname, required this.icon});

  final String chatname;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final TextEditingController message = TextEditingController();
    final ScrollController scrollController = ScrollController();
    final MsgController msgController =
        Provider.of<MsgController>(context, listen: false);
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                child: BottomTextFieldWidget(message: message),
              ),
              GestureDetector(
                onTap: () {
                  msgController.addmsg(
                      message.text, true, msgController.chatMsgs.length);
                  message.clear();
                  scrollController
                      .jumpTo(scrollController.position.maxScrollExtent);
                },
                child: CircleAvatar(
                  radius: 25.r,
                  foregroundColor: Colors.white,
                  backgroundColor: Constants.whatsAppGreen.withOpacity(0.9),
                  child: const Icon(
                    Icons.mic,
                    size: 23,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const EncryptionMsgWidget(),
            Consumer<MsgController>(
              builder: (context, value, child) => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: msgController.chatMsgs.length,
                itemBuilder: (context, index) => ChatBubble(
                  msg: msgController.chatMsgs.values
                      .elementAt(index)
                      .elementAt(0),
                  isme: msgController.chatMsgs.values
                      .elementAt(index)
                      .elementAt(1),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
