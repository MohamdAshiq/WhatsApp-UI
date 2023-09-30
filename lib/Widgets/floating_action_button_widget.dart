import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      height: 60.h,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Constants.whatsAppGreen.withOpacity(1),
        foregroundColor: Colors.white,
        child: Icon(icon),
      ),
    );
  }
}
