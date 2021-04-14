import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/remote/remote_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/tasks_editor_cubit.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/tasks_editor.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt<RemoteCubit>()..startedWatchingProducts(),
        lazy: false,
      ),
      BlocProvider(
        create: (context) => TasksEditorCubit(),
      ),
    ], child: const TasksEditor());
  }
}
