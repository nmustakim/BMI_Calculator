
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class CardChild extends StatelessWidget {
  final IconData? icon;
  final Color color;

  const CardChild(this.color,this.icon, this.gender);

  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            color:color,
            icon,
            size: iconSize1,
          ),
        ),
        Text(
          gender,
          style: mediumTextStyle,
        )
      ],
    );
  }
}
