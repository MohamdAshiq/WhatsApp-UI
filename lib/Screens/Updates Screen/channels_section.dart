import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';

import '../../Widgets/icon_button_widget.dart';

class ChannelsSection extends StatelessWidget {
  const ChannelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Channels",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButtonWidget(
              onpressed: () {},
              icon: Icons.add,
              size: 23,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "Stay updated on topics that matters to you.Find channels to follow below",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
        ),
        SizedBox(
          height: 200.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              width: MediaQuery.of(context).size.width / 2.8,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 0.9),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        foregroundColor: Colors.white,
                        radius: 33.r,
                        child: const Icon(
                          Icons.person,
                          size: 40,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.verified,
                          size: 23,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Text(
                      "Name ${index + 1}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 35),
                      enableFeedback: false,
                      backgroundColor: const Color.fromARGB(255, 198, 255, 227),
                      foregroundColor: Constants.whatsAppGreen.withOpacity(1),
                    ),
                    child: const Text(
                      "Follow",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              enableFeedback: false,
              backgroundColor: Constants.whatsAppGreen.withOpacity(1),
              foregroundColor: Colors.white),
          child: const Text("Find Channels"),
        ),
      ],
    );
  }
}
