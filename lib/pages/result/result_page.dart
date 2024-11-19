import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_gauge.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_text.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.bmi);

  double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Spacer(),
              ResultGauge(bmi),
              SizedBox(
                height: 56,
              ),
              ResultText(bmi),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("RECALCULATE"),
                ),
              ),
              SizedBox(
                height: 56,
              ),
            ],
          ),
        ));
  }
}
