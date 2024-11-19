import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  GenderBox(this.isMale, this.onChanged);

  bool isMale;
  void Function(bool newValue) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        gender(context, Icons.male, 'Male', isMale, true),
        SizedBox(width: 8),
        gender(context, Icons.female, 'FEMALE', !isMale, false),
      ],
    );
  }

  Widget gender(
    BuildContext context,
    IconData icon,
    String text,
    bool selected,
    bool isMaleBox,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onChanged(isMaleBox);
        },
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context)
                  .dividerColor, //gender 안에서는 context를 사용할 수 없음. Build 함수의 것을 내려받아야함
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Opacity(
                  opacity: 0.3,
                  child: Icon(
                    icon,
                    size: 80,
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Opacity(
                  opacity: selected ? 1 : 0.3,
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
