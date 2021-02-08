import 'package:flutter/material.dart';

extension ColorX on Color {
  LinearGradient toGradient() => LinearGradient(colors: [this, this]);
}
