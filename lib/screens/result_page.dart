import 'package:bmi_calculator/components/calculated_Brain.dart';
import 'package:flutter/material.dart';
import '../components/RepeatedContainer.dart';
import '../components/constants.dart';
import '../components/bottomButton.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult ;
  final String resultText;
  final String interpretation;
  ResultPage(this.bmiResult,this.resultText,this.interpretation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'RESULTS',
            style: TextStyle(
              fontFamily: 'Reggae One',
            ),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RepeatedContainer(
                kFixColor,
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(bmiResult, style: kBMITextStyle),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ]),
              ),
              BottomButton('RE-CALCULATE', () {

                Navigator.pop(context);
              }),
            ]));
  }
}
