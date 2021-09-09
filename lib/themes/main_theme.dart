
import 'package:flutter/material.dart';

final mainTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      background: Color.fromARGB(10, 100, 200, 0),
      primary: Color(0x002962ff)
    ),
    dividerColor: const Color.fromARGB(30, 0, 0, 0),
    textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontFamily: 'InterBold'
        ),
      headline2: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: 'InterBold'
      ),
      headline3: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'InterBold'
      ),
      headline4: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'InterSemiBold'
      ),
      headline5: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'InterSemiBold'
      ),
      bodyText1: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'InterLight'
      ),
    )
);