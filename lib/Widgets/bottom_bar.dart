import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class BottomBar extends StatelessWidget {
final title ;
final Function() onPressed;

BottomBar({required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
            color: bottomCardColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
        child: Center(
            child: Text(
          title,
          style: mediumTextStyle.copyWith(letterSpacing: 10),
        )),
      ),
    );
  }
}


