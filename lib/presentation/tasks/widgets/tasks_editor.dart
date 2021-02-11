import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/bloc/tasks_editor_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/edit_header.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/animated_navigation_bar.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/form/tasks_form.dart';

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

    return BlocBuilder<TasksEditorBloc, TasksEditorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: TopBar(
            content: EditHeader(
              primaryText: 'Tasks',
              secondaryText: 'Editor',
              isEditing: state.isEditing,
              confirmAction: () {
                return true;
              },
              cancelAction: () {
                return Tuple2(true, () {});
              },
            ),
          ),
          body: Center(
            child: FractionallySizedBox(
              widthFactor: kMainContentScreenWidth,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  TasksForm(),
                  const SizedBox(
                    height: kPrimaryElementsSpacing,
                  ),
                ],
              ),
            ),
          ),
          extendBody: true,
          bottomNavigationBar: AnimatedNavigationBar(_controller),
        );
      },
    );
  }
}
