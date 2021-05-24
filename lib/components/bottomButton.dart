import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.text,this.onTap);

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        child: Center(
          child: Text(text,style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: 'Reggae One',
              wordSpacing: 3
          ),),
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}