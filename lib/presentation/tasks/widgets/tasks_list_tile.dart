import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:supplier_mobile/application/settings/settings_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/tasks_editor_cubit.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/icon_paragraph.dart';
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
      if (!context.read<SettingsCubit>().state.personalization.enableWarnings) {
        context.read<TasksCubit>().deletedTask(uid);
        return Future.value();
      }

      getIt<Vibrate>().heavyImpactTap(context);
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StyledAlertDialog(
            content: 'Task will be deleted.',
            onConfirm: () {
              context.read<TasksCubit>().deletedTask(uid);
            },
          );
        },
      );
    }

    return GestureDetector(
      onTap: () {
        context.read<TasksEditorCubit>().startedEditing(optionOf(uid));
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                IconParagraph(
                  text: task.product,
                  iconAlignment: PlaceholderAlignment.bottom,
                  icon: const Icon(
                    CustomIcons.tshirt,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: _showDeleteAlert,
                  child: const Padding(
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      CustomIcons.remove,
                      color: kLighGrey,
                      size: 16,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: <Widget>[
                IconParagraph(
                  text: task.profileName,
                  icon: const Icon(
                    CustomIcons.profile,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(
                    CustomIcons.edit,
                    color: kLighGrey,
                    size: 16,
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
