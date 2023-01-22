
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class ReusableButtonPlusMinus extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

 ReusableButtonPlusMinus({required this.icon, required this.onPressed});



  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child:Icon(icon,size: iconSize2,)
    );
  }
}