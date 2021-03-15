import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/presentation/runner/widgets/tasks_progress_list.dart';

class RunnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RunnerCubit()
        ..startTasks(
          context.read<TasksCubit>().state.tasks.keys.toList(),
        ),
      child: TasksProgressList(),
    );
  }
}
