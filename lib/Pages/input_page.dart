
import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Model/calc.dart';
import '../Widgets/bottom_bar.dart';
import '../Widgets/card_child.dart';
import '../Widgets/reusableIcon_plus_minus.dart';
import '../Widgets/reusable_appbar.dart';
import '../Widgets/reusable_card.dart';
import 'output_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {
  int height = 165;
  int weight = 50;
  int age = 24;
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar:const ReusableAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(
            child: Container(
                margin: containerMargin,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                          color: cardColor1,
                          onPressed: () {
                            setState((){
                              selectedGender = Gender.male;
                            });

                          },
                          childCard: CardChild(
                            selectedGender == Gender.male ? activeColor:inactiveColor,
                            Icons.male_sharp,
                            "Male".toUpperCase(),
                          )),
                    ),
                    Expanded(
                      child: ReusableCard(
                          color: cardColor1,
                          onPressed: () {
                            setState((){
                              selectedGender = Gender.female;
                            });
                          },
                          childCard: CardChild(
                              selectedGender == Gender.female ? activeColor:inactiveColor,
                              Icons.female_sharp, "Female".toUpperCase())),
                    ),
                  ],
                )),
          ),
          Expanded(
              child: Container(
                margin: containerMargin,
                child: ReusableCard(
                    color: cardColor2,
                    onPressed: () {},
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height".toUpperCase(),
                          style: mediumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                height.toStringAsFixed(1),
                                style: bigTextStyle,
                              ),
                            ),
                            const Text(
                              "cm",
                              style: mediumTextStyle,
                            )
                          ],
                        ),
                        Slider(
                            activeColor: activeColor,
                            inactiveColor: inactiveColor,
                            thumbColor: thumbColor,
                            max: 300,
                            min: 120,
                            value: height.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            })
                      ],
                    )),
              )),
          Expanded(
              child: Container(
                margin: containerMargin,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ReusableCard(
                          color: cardColor3,
                          childCard: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight".toUpperCase(),
                                style: mediumTextStyle,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  weight.toString(),
                                  style: bigTextStyle,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ReusableButtonPlusMinus(
                                    icon: Icons.add_circle,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                  ReusableButtonPlusMinus(
                                    icon: Icons.remove_circle,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: ReusableCard(
                          color: cardColor3,
                          childCard: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age".toUpperCase(),
                                style: mediumTextStyle,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  age.toString(),
                                  style: bigTextStyle,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  ReusableButtonPlusMinus(
                                    icon: Icons.add_circle,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                  ReusableButtonPlusMinus(
                                    icon: Icons.remove_circle,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          )),
                    )
                  ],
                ),
              )),
          BottomBar(title: 'CALCULATE BMI',
              onPressed: (){
                BmiCalc bmiCalc = BmiCalc(height, weight,);

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return OutputPage(bmi: bmiCalc.calculateBmi(),result: bmiCalc.result(),message: bmiCalc.message(),resultColor: bmiCalc.resultColor(),
                  );
                }));

              })





        ],
      ),
    );
  }
}

