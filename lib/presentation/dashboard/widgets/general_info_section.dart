import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/dashboard/dashboard_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/header.dart';

class GeneralInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Version: ${state.generalInfo.version}',
                  style: const TextStyle(fontSize: 16, color: kLightPurple),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
