import 'package:flutter/material.dart';

const Color kPinkColor = Color(0xFFC95BA3);
const Color kVioletColor = Color(0xFF9253C1);
const Color kLightPurple = Color(0xFFF1E3FF);
const Color kBackgroundColor = Color(0xFF1B191C);
const Color kSecondaryBackground = Color(0xFF242225);
const Color kTetiaryBackground = Color(0xFF282629);
const Color kDarkGrey = Color(0xFF747273);
const Color kLighGrey = Color(0xFFB4B1B2);
const Color kRed = Color(0xFFFF0606);

const LinearGradient kPrimaryGradient = LinearGradient(
  colors: [kPinkColor, kVioletColor],
);
const LinearGradient kRedGradient = LinearGradient(
  colors: [Color(0xFFD20000), Color(0xFF890000)],
);

const LinearGradient kPrimaryLRGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [kPinkColor, kVioletColor]);
