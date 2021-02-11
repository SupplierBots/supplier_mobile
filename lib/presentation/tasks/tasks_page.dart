import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/bloc/tasks_editor_bloc.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/tasks_editor.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksEditorBloc(),
      child: const TasksEditor(),
    );
  }
}
