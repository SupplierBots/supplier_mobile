import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:supplier_mobile/application/runner/cubit/task_progress.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/icon_paragraph.dart';
import 'package:supplier_mobile/presentation/runner/widgets/progress_map.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_state_captcha.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_progress.dart';

class TaskView extends HookWidget {
  const TaskView({
    @required this.taskProgress,
  });

  final MapEntry<String, TaskProgress> taskProgress;

  @override
  Widget build(BuildContext context) {
    final task = BlocProvider.of<TasksCubit>(context, listen: false)
        .state
        .tasks[taskProgress.key];

    Widget getTaskState() {
      switch (taskProgress.value.action) {
        case TaskAction.captcha:
          return Positioned(
            right: 0,
            child: CaptchaState(solveAction: () {
              context.read<RunnerCubit>().setVisibleTask(taskProgress.key);
            }),
          );
        default:
          return Container();
      }
    }

    double getTaskProgress() {
      final message = taskProgress.value.message;
      if (progressMap.containsKey(message)) {
        return progressMap[message];
      }
      if (message.contains('Processing')) {
        return progressMap['Processing (x)'];
      }
      return 0;
    }

    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 19, bottom: 16, left: 20, right: 25),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context
                            .read<RunnerCubit>()
                            .setVisibleTask(taskProgress.key);
                      },
                      child: IconParagraph(
                        text: task.product,
                        iconAlignment: PlaceholderAlignment.bottom,
                        icon: const Icon(
                          CustomIcons.tshirt,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    IconParagraph(
                      text: task.profileName,
                      icon: const Icon(
                        CustomIcons.profile,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(height: 12),
                    IconParagraph(
                      text: taskProgress.value.message,
                      iconAlignment: PlaceholderAlignment.bottom,
                      spaceBetween: 19,
                      textColor: kLighGrey,
                      icon: const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ],
                ),
                getTaskState(),
              ],
            ),
          ),
          FractionallySizedBox(
            widthFactor: getTaskProgress(),
            child: Container(
              height: 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: kPrimaryGradient,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
