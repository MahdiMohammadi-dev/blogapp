import 'package:blogapp/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class MyTextTheme {
  final TextTheme textTheme = const TextTheme(
    titleLarge: TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w700,
      fontSize: 25,
      color: Color(0xff0d253c),
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: Color(0xff2d4379),
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.avenir,
      color: Color.fromARGB(255, 77, 83, 99),
    ),
    titleSmall: TextStyle(
        fontFamily: FontFamily.avenir,
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700),
    labelSmall: TextStyle(
        fontFamily: FontFamily.avenir,
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w500),
  );
}
