import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/dashboard/dashboard_bloc.dart';
import 'package:supplier_mobile/presentation/core/header.dart';

import 'droplist_display.dart';

class DroplistsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        if (state.droplists == null) return Container();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(text: 'Incoming drops', underlineWidth: 200),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: DroplistDisplay(
                    icon: const Icon(
                      Icons.access_alarm,
                      color: Colors.white,
                    ),
                    droplist: state.droplists.supreme,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Flexible(
                  child: DroplistDisplay(
                    icon: const Icon(
                      Icons.accessibility_sharp,
                      color: Colors.white,
                    ),
                    droplist: state.droplists.palace,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
