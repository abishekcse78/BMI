import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFE1BEE7),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Colors.green,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
