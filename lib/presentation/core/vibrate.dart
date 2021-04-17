import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/application/settings/settings_cubit.dart';

@LazySingleton()
class Vibrate {
  Future<void> error(BuildContext context) async {
    if (!context.read<SettingsCubit>().state.personalization.enableVibrations) {
      return;
    }
    HapticFeedback.heavyImpact();
    await Future<void>.delayed(const Duration(milliseconds: 100));
    HapticFeedback.heavyImpact();
  }

  void heavyImpactTap(BuildContext context) {
    if (!context.read<SettingsCubit>().state.personalization.enableVibrations) {
      return;
    }
    HapticFeedback.heavyImpact();
  }

  void tap(BuildContext context) {
    if (!context.read<SettingsCubit>().state.personalization.enableVibrations) {
      return;
    }
    HapticFeedback.mediumImpact();
  }
}
