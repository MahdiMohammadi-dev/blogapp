import 'package:flutter/material.dart';

class MyTextTheme {
  final TextTheme textTheme = TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w700,
        fontSize: 25,
        color: Color(0xff0d253c),
      ),
      titleMedium: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Color(0xff2d4379),
      ),
      bodyMedium: TextStyle(
        fontFamily: 'avenir',
        color: Color.fromARGB(255, 77, 83, 99),
      ),
      titleSmall: TextStyle(
          fontFamily: 'avenir',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700));
}
