import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {super.key, required this.onpressed, required this.icon, this.size = 22});

  final VoidCallback onpressed;
  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      enableFeedback: false,
      onPressed: onpressed,
      icon: Icon(
        icon,
        size: size,
      ),
    );
  }
}
