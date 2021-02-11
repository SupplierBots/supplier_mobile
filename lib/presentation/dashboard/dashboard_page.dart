import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/dashboard/dashboard_bloc.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/dashboard/widgets/droplists_section.dart';
import 'package:supplier_mobile/presentation/dashboard/widgets/general_info_section.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('dash loaded');
    return BlocProvider(
      create: (context) => getIt<DashboardBloc>()
        ..add(const DashboardEvent.startedWatchingGeneralInfo())
        ..add(const DashboardEvent.startedWatchingDroplists()),
      child: Scaffold(
        appBar: TopBar(
          content: Text(
            'Dashboard',
            style: kHeader,
          ),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: FractionallySizedBox(
            widthFactor: kMainContentScreenWidth,
            child: ListView(
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                DroplistsSection(),
                const SizedBox(
                  height: 20,
                ),
                GeneralInfoSection(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NavigationBar(),
      ),
    );
  }
}
