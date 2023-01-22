import 'dart:math';
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class BmiCalc {
  final int _height;
  final int _weight;
  double? _bmi;


  BmiCalc(this._height, this._weight);

  String calculateBmi() {
    _bmi = _weight / pow(_height / 100, 2);
    return _bmi!.toStringAsFixed(2);
  }


  String result() {
    if (_bmi! < 16) {
      return sT;
    } else if (_bmi! > 16 && _bmi! <= 18.5) {
      return mT;
    }  else if (_bmi! > 18.5 && _bmi! <= 25) {
      return normal;
    } else if (_bmi! > 25 && _bmi! <= 30) {
      return overWeight;
    } else  {
      return obesity;
    }
  }

  String message() {
    if (result() == sT) {
      return "You BMI indicates that you are severely thin. You should consult a Nutritionist or Doctor  for proper advice.";
    }  else if (result() == mT) {
      return "Your BMI indicates that you are moderately thin. You should maintain a healthy diet plan.";
    } else if (result() == normal) {
      return "Your BMI is normal. Good job!";
    } else if (result() == overWeight) {
      return "You have a higher than normal body weight. Try to exercise more!!";
    }  else {
      return "You are in different types of health risks. You should consult a Doctor for proper advice";
    }
  }
  Color resultColor (){
    if(result()== sT ||  result() == obesity){
      return Colors.red;
    }
    else if (result() == normal ){
      return Colors.green;
    }
    else {
      return Colors.blue;
    }
  }

}

