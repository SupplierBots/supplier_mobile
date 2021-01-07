import 'package:flutter/material.dart';

const kPinkColor = Color(0xFFC95BA3);
const kVioletColor = Color(0xFF9253C1);
const kLightPurple = Color(0xFFF1E3FF);
const kBackgroundColor = Color(0xFF1B191C);
const kSecondaryBackground = Color(0xFF242225);
const kTetiaryBackground = Color(0xFF282629);
const kDarkGrey = Color(0xFF747273);
const kLighGrey = Color(0xFFB4B1B2);
const kRed = Color(0xFFFF0606);

const kPrimaryGradient = LinearGradient(
  colors: [kPinkColor, kVioletColor],
);
const kRedGradient = LinearGradient(
  colors: [Color(0xFFD20000), Color(0xFF890000)],
);

const kPrimaryLRGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [kPinkColor, kVioletColor]);
