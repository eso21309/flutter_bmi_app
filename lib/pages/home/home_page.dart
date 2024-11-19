import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/home/widgets/gender_box.dart';
import 'package:flutter_bmi_app/pages/home/widgets/slider_box.dart';
import 'package:flutter_bmi_app/pages/result/result_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  void onGenderChanged(bool male) {
    setState(() {
      isMale = male;
    });
  }

  double height = 170;
  void onHeightChanged(double newheight) {
    setState(() {
      height = newheight;
    });
  }

  double weight = 70;
  void onWeightChanged(double newheight) {
    setState(() {
      weight = newheight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 50,
        ),
        child: Column(
          children: [
            GenderBox(isMale, onGenderChanged),
            Spacer(),
            SliderBox(
              lable: "HEIGHT",
              unit: "cm",
              value: height,
              onChanged: onHeightChanged,
            ),
            Spacer(),
            SliderBox(
              lable: "WEIGHT",
              unit: "kg",
              value: weight,
              onChanged: onWeightChanged,
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  final meterHeight = height / 100;
                  final bmi = weight / (meterHeight * meterHeight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ResultPage(bmi);
                      },
                    ),
                  );
                },
                child: Text("CALCULATE"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
