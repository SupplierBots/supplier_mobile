import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/tasks_editor_cubit.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/google_account_bar.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/tasks_list_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TasksCubit>().state;

    if (true) {
      return SafeArea(
        child: Stack(
          children: [
            ListView(children: [
              const SizedBox(height: 20),
              const GoogleAccountBar(),
              const SizedBox(height: kPrimaryElementsSpacing),
              for (var task in state.tasks.entries) ...[
                TasksListTile(
                  uid: task.key,
                  task: task.value,
                ),
                const SizedBox(height: kPrimaryElementsSpacing),
              ],
              if (state.tasks.isEmpty) ...[
                SizedBox(height: 40),
                if (context.read<ProfilesCubit>().state.profiles.isEmpty)
                  GestureDetector(
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
                else
                  const Text(
                    "You haven't created any task yet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kDarkGrey,
                      fontSize: 18,
                    ),
                  ),
              ]
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: kBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (state.tasks.isNotEmpty)
                        SecondaryButton(
                          text: 'Start',
                          width: 110,
                          height: 45,
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          onTap: () {
                            ExtendedNavigator.of(context)
                                .replace(Routes.runnerPage);
                          },
                        ),
                      const SizedBox(width: kPrimaryElementsSpacing),
                      if (context
                          .read<ProfilesCubit>()
                          .state
                          .profiles
                          .isNotEmpty)
                        SecondaryButton(
                          text: 'Add',
                          width: 100,
                          height: 45,
                          icon: const Icon(CustomIcons.plus,
                              color: Colors.white, size: 16),
                          onTap: () {
                            context
                                .read<TasksEditorCubit>()
                                .startedEditing(none());
                          },
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 120),
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: context.read<ProfilesCubit>().state.profiles.isEmpty
              ? GestureDetector(
                  onTap: () {
                    ExtendedNavigator.of(context).replace(Routes.profilesPage);
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
                        TextSpan(text: 'page and create at least one profile'),
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
    );
  }
}
