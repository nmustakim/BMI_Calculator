import 'package:flutter/material.dart';

import '../Constants/constants.dart';


class ReusableCard extends StatelessWidget {
  final Widget childCard;
  final Function()? onPressed;
  final Color color;

  const ReusableCard({required this.color,this.onPressed,required this.childCard});



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      

      child: Card(
          color: cardColor1,
              child: childCard,


      ),
    );
  }
}