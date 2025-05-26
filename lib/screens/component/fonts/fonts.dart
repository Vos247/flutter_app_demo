import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 12,
    color: Colors.grey,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );
}