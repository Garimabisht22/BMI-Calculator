import 'package:flutter/material.dart';
import 'constants.dart';
class CustomIcon extends StatelessWidget {
  @override
  final String gender;
  final IconData icon;
  CustomIcon(this.gender, [this.icon]);

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender,
          style: kGenderTextStyle)
      ],
    );
  }
}