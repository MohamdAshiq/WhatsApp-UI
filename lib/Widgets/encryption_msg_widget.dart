import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EncryptionMsgWidget extends StatelessWidget {
  const EncryptionMsgWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      height: 80.h,
      width: 290.w,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 248, 228, 167).withOpacity(0.7),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: const Center(
        child: Text(
          "Messages and calls are end-to-end encrypted.\nNo one outside of this chat,not even Whatsap,\ncan read or listen to them.Tap to learn more",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 82, 78, 78),
          ),
        ),
      ),
    );
  }
}
