import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Widgets/icon_button_widget.dart';

class MyStatusSection extends StatelessWidget {
  const MyStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Status",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
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
      ],
    );
  }
}
