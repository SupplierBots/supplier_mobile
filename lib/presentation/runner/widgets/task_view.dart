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
    @required this.taskKey,
  });

  final String taskKey;

  @override
  Widget build(BuildContext context) {
    final task = BlocProvider.of<TasksCubit>(context, listen: false)
        .state
        .tasks[taskKey];

    final taskProgress =
        context.watch<RunnerCubit>().state.tasksProgress[taskKey];

    Widget getTaskState() {
      switch (taskProgress.action) {
        case TaskAction.captcha:
          return Positioned(
            right: 0,
            child: CaptchaState(solveAction: () {
              context.read<RunnerCubit>().setVisibleTask(taskKey);
            }),
          );
        default:
          return Container();
      }
    }

    double getTaskProgress(String message) {
      if (progressMap.containsKey(message)) {
        return progressMap[message];
      }
      if (message.contains('Processing')) {
        return progressMap['Processing (x)'];
      }
      return 0;
    }

    final progressTween = useState(Tween(begin: 0.0, end: 0.0));

    return BlocListener<RunnerCubit, RunnerState>(
      listener: (context, state) {
        progressTween.value = Tween(
          begin: 0.0,
          end: getTaskProgress(
            state.tasksProgress[taskKey].message,
          ),
        );
      },
      child: Container(
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
              padding: const EdgeInsets.only(
                  top: 19, bottom: 16, left: 20, right: 25),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<RunnerCubit>().setVisibleTask(taskKey);
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
                        text: taskProgress.message,
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
            TweenAnimationBuilder<double>(
              tween: progressTween.value,
              duration: progressTween.value.end == 0
                  ? Duration.zero
                  : const Duration(milliseconds: 100),
              builder: (_, value, child) {
                return FractionallySizedBox(
                  widthFactor: value,
                  child: child,
                );
              },
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
      ),
    );
  }
}
