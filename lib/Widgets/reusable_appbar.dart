import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class ReusableAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const ReusableAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      centerTitle: true,
      title: const Text("BMI CALCULATOR"),
      backgroundColor: bgColor,
    );
  }
 @override Size get preferredSize => Size.fromHeight(kToolbarHeight);
}