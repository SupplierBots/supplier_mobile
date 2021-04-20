import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/dashboard/dashboard_cubit.dart';
import 'package:supplier_mobile/presentation/core/header.dart';

import 'droplist_display.dart';

class DroplistsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<DashboardCubit>().state;

    if (state.droplists.length < 2) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(text: 'Droplists', underlineWidth: 130),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Flexible(
              child: DroplistDisplay(
                droplist: state.droplists[0],
                isActive: true,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Flexible(
              child: DroplistDisplay(
                droplist: state.droplists[1],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
