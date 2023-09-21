import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_button_widget.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
          onpressed: () {},
          icon: CupertinoIcons.camera,
        ),
        IconButtonWidget(
          onpressed: () {},
          icon: CupertinoIcons.search,
        ),
        IconButtonWidget(
          onpressed: () {},
          icon: Icons.more_vert,
        ),
      ],
    );
  }
}
