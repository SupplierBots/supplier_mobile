import 'package:flutter/material.dart';

extension ColorX on Color {
  LinearGradient toLinearGradient() => LinearGradient(colors: [this, this]);
}
