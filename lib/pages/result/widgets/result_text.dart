import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  ResultText(this.bmi);

  double bmi;

  String getResultText() {
    if (bmi >= 35) {
      return "EXTREMELY OBESE";
    } else if (bmi >= 30) {
      return "OBESE";
    } else if (bmi >= 25) {
      return "OVERWEIGHT";
    } else if (bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDDERWEIGHT";
    }
  }

  String getResultRange() {
    if (bmi >= 35) {
      return "35";
    } else if (bmi >= 30) {
      return "30-35";
    } else if (bmi >= 25) {
      return "25-30";
    } else if (bmi >= 18.5) {
      return "18.5-25";
    } else {
      return ">18.5";
    }
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
        children: [
          TextSpan(text: "Result;"),
          TextSpan(
            text: getResultText(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).highlightColor,
            ),
          ),
          TextSpan(text: "BMI ${getResultRange()}"),
        ],
      ),
    );
  }
}
