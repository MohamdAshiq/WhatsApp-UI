import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
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
                  radius: 25.r,
                  backgroundColor: Constants.whatsAppGreen.withOpacity(1),
                  foregroundColor: Colors.white,
                  child: const Icon(
                    CupertinoIcons.paperclip,
                    size: 22,
                  ),
                ),
                title: Text(
                  "Create call link",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                subtitle: Text(
                  "Share a link for your WhatsApp call",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Text(
                  "Recent",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              Column(
                children: List.generate(
                  10,
                  (index) => ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      foregroundColor: Colors.white,
                      radius: 25.r,
                      child: const Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                    title: Text(
                      "Chat Call ${index + 1}",
                      style: TextStyle(
                          fontSize: 14.5.sp,
                          fontWeight: FontWeight.w600,
                          color: index.isOdd ? Colors.black : Colors.redAccent),
                    ),
                    subtitle: Row(
                      children: [
                        index.isEven
                            ? const Icon(
                                Icons.arrow_outward,
                                size: 18,
                                color: Colors.green,
                              )
                            : const Icon(
                              Icons.call_received,
                              size: 18,
                              color: Colors.red,
                            ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "September ${index+1}, 7:0$index PM",
                          style: TextStyle(
                              fontSize: 12.5.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.call,
                      color: Color.fromARGB(255, 74, 161, 79),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(onPressed: () {
        
      }, icon: Icons.add_ic_call_sharp),
    );
  }
}
