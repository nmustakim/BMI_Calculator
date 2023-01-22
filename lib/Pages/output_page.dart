
import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Widgets/bottom_bar.dart';
import '../Widgets/reusable_appbar.dart';

class OutputPage extends StatelessWidget {
  const OutputPage({Key? key, this.result,required this.bmi,required this.message,this.resultColor}) : super(key: key);
  final String? result;
  final String bmi;
  final String message;
  final Color? resultColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Your Result",style: mediumTextStyle.copyWith(fontSize: 35),),
            ),
            Container(

              height: MediaQuery.of(context).size.height/1.5,
              color: bgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Text(result!.toUpperCase(),style: mediumTextStyle.copyWith(color:resultColor,letterSpacing: 5),),
                  )),
                  Expanded(child: Text(bmi,style: bigTextStyle.copyWith(fontSize: 80),)),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Expanded(child: Text(message,style: mediumTextStyle.copyWith(fontSize: 22),textAlign: TextAlign.center,)),
                  ),
                  const Expanded(child: SizedBox()),
                  BottomBar(title: "RE-CALCULATE BMI",
                    onPressed: (){
                      Navigator.pop(context);

                    },

                  )


                ],),
            )
          ],
        ),
      ),



    );
  }
}
