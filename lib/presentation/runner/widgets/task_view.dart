import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:supplier_mobile/application/runner/cubit/task_progress.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/in_progress_state.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_state_3DSecure.dart';
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
          return CaptchaState(solveAction: () {
            context.read<RunnerCubit>().setVisibleTask(taskProgress.key);
          });
        case TaskAction.secure:
          return const SecureState();
        default:
          return const InProgressState();
      }
    }

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 18, bottom: 18, left: 20, right: 25),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const GradientWidget(
                      child: Icon(
                        CustomIcons.tshirt,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<RunnerCubit>()
                            .setVisibleTask(taskProgress.key);
                      },
                      child: Text(
                        task.product,
                        style:
                            const TextStyle(fontSize: 16, color: kLightPurple),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const GradientWidget(
                      child: Icon(
                        CustomIcons.profile,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 17),
                    Text(
                      task.profileName,
                      style: const TextStyle(fontSize: 16, color: kLightPurple),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const GradientWidget(
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 17),
                    Text(
                      taskProgress.value.message,
                      style: const TextStyle(fontSize: 16, color: kLighGrey),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            getTaskState(),
          ],
        ),
      ),
    );
  }
}
