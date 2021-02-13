import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:supplier_mobile/application/tasks/tasks_bloc.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/bloc/tasks_editor_bloc.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/styled_alert_dialog.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';

class TasksListTile extends StatelessWidget {
  const TasksListTile({
    Key key,
    @required this.task,
    @required this.uid,
  }) : super(key: key);
  final Task task;
  final String uid;

  @override
  Widget build(BuildContext context) {
    Future<void> _showDeleteAlert() {
      Vibrate.heavyImpactTap();
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StyledAlertDialog(
            content: 'Task will be deleted.',
            onConfirm: () {
              context.read<TasksBloc>().add(TasksEvent.deletedTask(uid));
            },
          );
        },
      );
    }

    return GestureDetector(
      onTap: () {
        Vibrate.tap();
        context
            .read<TasksEditorBloc>()
            .add(TasksEditorEvent.startedEditing(optionOf(uid)));
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: const BoxDecoration(
          color: kSecondaryBackground,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const GradientWidget(
                  child: Icon(
                    CustomIcons.tshirt,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  task.product,
                  style: const TextStyle(
                    color: kLightPurple,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                IconButton(
                  padding: const EdgeInsets.all(6),
                  onPressed: _showDeleteAlert,
                  icon: const Icon(
                    CustomIcons.remove,
                    color: kLighGrey,
                    size: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(width: 2),
                const GradientWidget(
                  child: Icon(
                    CustomIcons.profiles,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 18),
                Text(
                  task.profileName,
                  style: const TextStyle(color: kLightPurple, fontSize: 18),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
                  child: Icon(
                    CustomIcons.edit,
                    color: kLighGrey,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
