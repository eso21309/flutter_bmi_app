import 'package:flutter/material.dart';

class SliderBox extends StatelessWidget {
  SliderBox({
    required this.lable, //변수가 3가지 이상인 경우에는 기억하기 어려우므로 네임드 파라미터를 사용함
    required this.unit,
    required this.value,
    required this.onChanged,
  });

  String lable;
  double value; //슬라이드에서는 숫자를 더블만 허용함
  String unit;
  void Function(double newValue) onChanged;

  @override
  Widget build(Object context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              lable,
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Text(
              value.toStringAsFixed(0), //고정된 소수점을 0으로 만들어주기
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              unit,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Slider(
          value: value,
          onChanged: onChanged,
          min: 1,
          max: 300,
        )
      ],
    );
  }
}
