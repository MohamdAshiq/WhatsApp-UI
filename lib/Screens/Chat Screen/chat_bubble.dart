import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          constraints: BoxConstraints(
            minHeight: 25.h,
            minWidth: 10.w,
            maxWidth: 250.h,
            maxHeight: double.infinity,
          ),
          decoration:  BoxDecoration(
            color: isme? Colors.green.shade100:Colors.white.withOpacity(0.4),
            borderRadius:const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              msg,
              style:  TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}
