import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0A0E21),
          scaffoldBackgroundColor: Color(0xff0A0E21),
       ),
        home: Inputpage());
  }
}
