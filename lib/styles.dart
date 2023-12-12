import 'package:flutter/material.dart';

Color primaryColor = const Color(0xff404D97);
Color secondaryColor = const Color(0xff50D1DF);

TextStyle h1 = const TextStyle(
  color: Colors.black,
  letterSpacing: 1.2,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle h12 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: primaryColor,
    letterSpacing: 0);

TextStyle h2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: primaryColor);

TextStyle link = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: primaryColor,
    decoration: TextDecoration.underline,
    letterSpacing: 0,
    decorationColor: primaryColor);
