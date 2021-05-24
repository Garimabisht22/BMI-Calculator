import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/RepeatedContainer.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/CustomIcon.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/components/roundiconbutton.dart';
import 'package:bmi_calculator/components/calculated_Brain.dart';

enum Gender { masculine, feminine }

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender selectedGender;
  int height = 160, weight = 50, age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontFamily: 'Reggae One',
            ),
          ),
        ),
        // backgroundColor: ,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                RepeatedContainer(
                    selectedGender == Gender.masculine
                        ? kFixColor
                        : kNotfixColor,
                    CustomIcon('MALE', kMale), () {
                  setState(() {
                    selectedGender = Gender.masculine;
                  });
                }),
                RepeatedContainer(
                    selectedGender == Gender.feminine
                        ? kFixColor
                        : kNotfixColor,
                    CustomIcon('FEMALE', kFemale), () {
                  setState(() {
                    selectedGender = Gender.feminine;
                  });
                }),
              ],
            ),
          ),
          RepeatedContainer(
            kFixColor,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kGenderTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: kNumberStyle),
                    Text(
                      'cm',
                      style: kGenderTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Colors.pinkAccent,
                      inactiveColor: Color(0xff8d8e98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                          print(newValue);
                        });
                      }),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                RepeatedContainer(
                  kFixColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kGenderTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(FontAwesomeIcons.minus,(){
                            setState(() {
                              weight--;
                            });
                          }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(FontAwesomeIcons.plus,(){
                            setState(() {
                              weight++;
                            });
                          }),
                        ],
                      )
                    ],
                  ),
                ),
                RepeatedContainer(
                  kFixColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kGenderTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(FontAwesomeIcons.minus,(){
                            setState(() {
                              age--;
                            });
                          }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(FontAwesomeIcons.plus,(){
                            setState(() {
                              age++;
                            });
                          })
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          BottomButton('CALCULATE',(){
            CalculatorBrain calc = CalculatorBrain(height , weight);

            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)
            {
              return ResultPage(calc.calculateBMI(),calc.getResult(),calc.getInterpretation());
            }
            ),
            );
          },)
        ],
      ),
    );

  }
}