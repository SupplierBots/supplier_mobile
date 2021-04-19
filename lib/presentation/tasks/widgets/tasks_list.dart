import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/tasks_editor_cubit.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/google_account_bar.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/tasks_list_tile.dart';
import 'package:device_info/device_info.dart';

class TasksList extends HookWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TasksCubit>().state;

    Future<bool> _canAddTask() async {
      final deviceInfo = DeviceInfoPlugin();
      final iosInfo = await deviceInfo.iosInfo;

      const highendIPhones = [
        'iPhone10,3',
        'iPhone10,6',
        'iPhone11,2',
        'iPhone11,4',
        'iPhone11,6',
        'iPhone11,8',
        'iPhone12,1',
        'iPhone12,3',
        'iPhone12,5',
        'iPhone12,8',
        'iPhone13,1',
        'iPhone13,2',
        'iPhone13,3',
        'iPhone13,4'
      ];

      final maxTasks = highendIPhones.contains(iosInfo.utsname.machine) ? 4 : 3;
      return state.tasks.length < maxTasks &&
          context.read<ProfilesCubit>().state.profiles.isNotEmpty;
    }

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
            const SizedBox(height: 100),
            if (state.tasks.isEmpty) ...[
              const SizedBox(height: 40),
              if (context.read<ProfilesCubit>().state.profiles.isEmpty)
                GestureDetector(
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
                              CustomIcons.profile,
                              color: kLighGrey,
                            ),
                          ),
                        ),
                        TextSpan(text: 'page and create at least one profile'),
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
                    FutureBuilder<bool>(
                      future: _canAddTask(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData || !snapshot.data) {
                          return const SizedBox();
                        }
                        return SecondaryButton(
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
                        );
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
}
