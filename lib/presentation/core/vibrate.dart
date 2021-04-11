import 'package:flutter/services.dart';

abstract class Vibrate {
  static Future<void> error() async {
    HapticFeedback.heavyImpact();
    await Future<void>.delayed(const Duration(milliseconds: 100));
    HapticFeedback.heavyImpact();
  }

  static void heavyImpactTap() {
    HapticFeedback.heavyImpact();
  }
}
