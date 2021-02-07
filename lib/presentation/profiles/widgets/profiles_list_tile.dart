import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';

class ProfilesListTile extends StatelessWidget {
  const ProfilesListTile({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProfilesEditorBloc>().add(StartedEditing(name));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kSecondaryBackground,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
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
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context
                    .read<ProfilesBloc>()
                    .add(ProfilesEvent.deletedProfile(name: name));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: const Icon(
                  CustomIcons.remove,
                  color: kLighGrey,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
