import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/tasks_list_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TasksCubit>().state;

    if (state.tasks.isNotEmpty) {
      return Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: kPrimaryElementsSpacing,
          children: state.tasks.entries
              .map(
                (task) => TasksListTile(
                  uid: task.key,
                  task: task.value,
                ),
              )
              .toList(),
        ),
      );
    }
    return Expanded(
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 120),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: context.read<ProfilesCubit>().state.profiles.isEmpty
                ? GestureDetector(
                    onTap: () {
                      ExtendedNavigator.of(context)
                          .replace(Routes.profilesPage);
                    },
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          color: kLighGrey,
                          fontSize: 18,
                          fontFamily: 'Lato',
                        ),
                        children: [
                          TextSpan(text: 'Firstly, head on to'),
                          WidgetSpan(
                            alignment: ui.PlaceholderAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                CustomIcons.profiles,
                                color: kLighGrey,
                              ),
                            ),
                          ),
                          TextSpan(
                              text: 'page and create at least one profile'),
                        ],
                      ),
                    ),
                  )
                : const Text(
                    "You haven't created any task yet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kDarkGrey,
                      fontSize: 18,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
