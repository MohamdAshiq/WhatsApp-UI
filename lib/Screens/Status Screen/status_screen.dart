import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Widgets/floating_action_button_widget.dart';
import 'package:whatsapp_ui/Widgets/icon_button_widget.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 5,
            right: 10,
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
                  ),
                  IconButtonWidget(
                    onpressed: () {},
                    icon: Icons.more_vert,
                    size: 23,
                  )
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      foregroundColor: Colors.white,
                      radius: 35.r,
                      child: const Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 3,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 13.r,
                        child: CircleAvatar(
                          radius: 11.r,
                          foregroundColor: Colors.white,
                          backgroundColor: Constants.whatsAppGreen,
                          child: const Icon(
                            Icons.add,
                            size: 17,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                subtitle: Text(
                  "Tap to add status update",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
              ),
              Theme(
                data: ThemeData(splashColor: Colors.transparent),
                child: ExpansionTile(
                  iconColor: Colors.grey[700],
                  tilePadding: EdgeInsets.zero,
                  collapsedBackgroundColor: Colors.transparent,
                  title: Text(
                    "Recent Updates",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                  children: List.generate(
                    10,
                    (index) => ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
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
                        "Status ${index + 1}",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "${index + 1} minutes ago",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700]),
                      ),
                    ),
                  ),
                ),
              )
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
