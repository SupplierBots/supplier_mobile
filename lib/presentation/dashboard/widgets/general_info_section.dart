import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:package_info/package_info.dart';
import 'package:supplier_mobile/application/dashboard/dashboard_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/dashboard/widgets/update_warning.dart';
import 'package:supplier_mobile/presentation/dashboard/widgets/version_id.dart';
import 'package:version/version.dart';

class GeneralInfoSection extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<DashboardCubit>().state;
    final currentVersion = useState('0.0.0');
    useMemoized(() async {
      final info = await PackageInfo.fromPlatform();
      currentVersion.value = info.version;
    });

    bool isUpdateAvailable() =>
        Version.parse(state.generalInfo.version) >
        Version.parse(currentVersion.value);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isUpdateAvailable()) ...[
          const UpdateWarning(),
          const SizedBox(
            height: kPrimaryElementsSpacing,
          )
        ],
        const Header(text: 'News', underlineWidth: 90),
        const SizedBox(
          height: 10,
        ),
        Text(
          state.generalInfo.news,
          style: const TextStyle(
            fontSize: 16,
            color: kLighGrey,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Header(text: 'Tips', underlineWidth: 70),
        const SizedBox(
          height: 10,
        ),
        Text(
          state.generalInfo.tips,
          style: const TextStyle(fontSize: 16, color: kLighGrey),
        ),
        const SizedBox(
          height: 20,
        ),
        VersionID(version: currentVersion.value),
      ],
    );
  }
}
