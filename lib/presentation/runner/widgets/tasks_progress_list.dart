import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:supplier_mobile/presentation/core/buttons/primary_button.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';
import 'package:supplier_mobile/presentation/runner/widgets/task_view.dart';
import 'package:supplier_mobile/presentation/runner/widgets/browser_instance.dart';

class TasksProgressList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final activeTask =
        context.select((RunnerCubit runner) => runner.state.visibleTask);

    final tasks = BlocProvider.of<RunnerCubit>(context, listen: false)
        .state
        .tasksProgress;

    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Supplier',
          style: kHeader,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Offstage(
                  offstage: activeTask.isSome(),
                  child: Center(
                    child: FractionallySizedBox(
                      widthFactor: kMainContentScreenWidth,
                      child: ListView(children: [
                        const SizedBox(height: 20),
                        for (var task in tasks.entries) ...[
                          TaskView(
                            taskKey: task.key,
                          ),
                          const SizedBox(height: kPrimaryElementsSpacing),
                        ]
                      ]),
                    ),
                  ),
                ),
                for (final task in tasks.keys) BrowserInstance(task),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (activeTask.isSome())
                    PrimaryButton(
                      text: 'Close',
                      width: 100,
                      height: 45,
                      onTap: () {
                        final runner = context.read<RunnerCubit>();
                        runner.closeVisibleTask();
                      },
                    ),
                  const SizedBox(width: 10),
                  SecondaryButton(
                    text: 'Stop',
                    width: 110,
                    height: 45,
                    icon: const Icon(
                      Icons.stop,
                      color: Colors.white,
                    ),
                    onTap: () {
                      ExtendedNavigator.of(context).replace(Routes.tasksPage);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
