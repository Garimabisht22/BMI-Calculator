import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.child,this.onPressed);
  final IconData child;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      onPressed: onPressed,
      elevation: 6,
      shape: CircleBorder(
      ),
      fillColor:Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      highlightColor: Color(0xAAFA0356),
      splashColor: Colors.teal,

    );
  }
}

