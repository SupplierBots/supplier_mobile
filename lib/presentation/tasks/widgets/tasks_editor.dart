import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/bloc/tasks_editor_bloc.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/edit_header.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/animated_navigation_bar.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/form/tasks_form.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/tasks_list.dart';
import 'package:uuid/uuid.dart';

class TasksEditor extends HookWidget {
  const TasksEditor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormBuilderState>());
    final _controller = useAnimationController(
      duration: const Duration(milliseconds: 250),
    );

    bool _submit() {
      FocusManager.instance.primaryFocus.unfocus();
      if (!formKey.currentState.saveAndValidate()) return false;

      final task = Task.fromJson(formKey.currentState.value);
      final uid = context.read<TasksEditorBloc>().state.editedTaskUid.fold(
            () => Uuid().v4(),
            (uid) => uid,
          );

      context.read<TasksCubit>().setTask(uid, task);
      context
          .read<TasksEditorBloc>()
          .add(const TasksEditorEvent.finishedEditing());

      return true;
    }

    return BlocConsumer<TasksEditorBloc, TasksEditorState>(
      listener: (context, state) {
        if (state.isEditing) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      builder: (context, state) {
        int _getEditedIndex() {
          final tasks = context.read<TasksCubit>().state.tasks;
          final index = state.editedTaskUid.fold(
            () => tasks.length,
            (uid) => tasks.entries.toList().indexWhere((t) => t.key == uid),
          );
          return index + 1;
        }

        return Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: TopBar(
            content: EditHeader(
              primaryText: 'Tasks',
              secondaryText: 'Editing #${_getEditedIndex()} Task',
              isEditing: state.isEditing,
              confirmAction: _submit,
              cancelAction: () {
                formKey.currentState.save();
                final showAlert = formKey.currentState.initialValue == null ||
                    Task.fromJson(formKey.currentState.initialValue) !=
                        Task.fromJson(formKey.currentState.value);
                return Tuple2(showAlert, () {
                  context
                      .read<TasksEditorBloc>()
                      .add(const TasksEditorEvent.finishedEditing());
                });
              },
            ),
          ),
          body: Center(
            child: FractionallySizedBox(
              widthFactor: kMainContentScreenWidth,
              child: Column(
                children: [
                  if (state.isEditing)
                    TasksForm(formKey: formKey)
                  else
                    const TasksList(),
                ],
              ),
            ),
          ),
          floatingActionButton: !state.isEditing &&
                  context.read<ProfilesCubit>().state.profiles.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FloatingActionButton(
                    backgroundColor: kSecondaryBackground,
                    onPressed: () {
                      Vibrate.tap();
                      context
                          .read<TasksEditorBloc>()
                          .add(TasksEditorEvent.startedEditing(none()));
                    },
                    child: const GradientWidget(
                      child: Icon(
                        CustomIcons.plus,
                        size: 20,
                      ),
                    ),
                  ),
                )
              : null,
          extendBody: true,
          bottomNavigationBar: AnimatedNavigationBar(_controller),
        );
      },
    );
  }
}
