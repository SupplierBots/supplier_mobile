import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_cubit.dart';
import 'package:supplier_mobile/application/settings/settings_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/domain/profiles/profile.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/styled_alert_dialog.dart';
import 'package:supplier_mobile/presentation/core/styled_error_dialog.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';

class ProfilesListTile extends StatelessWidget {
  const ProfilesListTile({Key key, @required this.name, @required this.profile})
      : super(key: key);

  final String name;
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    Future<void> _showDeleteAlert() {
      final tasks = context.read<TasksCubit>().state.tasks;
      if (tasks.values.any((task) => task.profileName == name)) {
        getIt<Vibrate>().error(context);
        return showDialog<void>(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return StyledErrorDialong(
              content:
                  "Couldn't delete $name. It is selected in one of the tasks.",
            );
          },
        );
      }

      if (!context.read<SettingsCubit>().state.personalization.enableWarnings) {
        context.read<ProfilesCubit>().deletedProfile(name);
        return Future.value();
      }

      getIt<Vibrate>().heavyImpactTap(context);
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StyledAlertDialog(
            content: '$name will be deleted.',
            onConfirm: () {
              context.read<ProfilesCubit>().deletedProfile(name);
            },
          );
        },
      );
    }

    return GestureDetector(
      onTap: () {
        context.read<ProfilesEditorCubit>().startedEditing(name);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        height: 105,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kSecondaryBackground,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: kLightPurple, fontSize: 18),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      CustomIcons.edit,
                      color: kLighGrey,
                      size: 18,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: _showDeleteAlert,
                  padding: const EdgeInsets.all(20),
                  icon: const Icon(
                    CustomIcons.remove,
                    color: kLighGrey,
                    size: 18,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    '${profile.firstName} ${profile.lastName}',
                    style: const TextStyle(color: kLightPurple, fontSize: 18),
                  ),
                  const Spacer(),
                  GradientWidget(
                    child: Text(
                      '**** ${profile.creditCardNumber.substring(15)}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
