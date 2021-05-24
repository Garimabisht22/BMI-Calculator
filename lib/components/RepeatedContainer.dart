import 'package:flutter/material.dart';

class RepeatedContainer extends StatelessWidget {
  RepeatedContainer(this.colour,this.childCard , [this.onPress]);

  final Color colour;
  final Widget childCard;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:onPress ,
        child: Container(
          child: childCard,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
