import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_cubit.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/create_profile_modal.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_list_tile.dart';

class ProfilesList extends StatelessWidget {
  const ProfilesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfilesCubit>().state;

    return SafeArea(
      child: Stack(
        children: [
          if (state.profiles.isNotEmpty)
            ListView(
              children: [
                const SizedBox(height: 20),
                for (var profile in state.profiles.entries) ...[
                  ProfilesListTile(
                    name: profile.key,
                    profile: profile.value,
                  ),
                  const SizedBox(height: kPrimaryElementsSpacing)
                ],
                const SizedBox(height: 125)
              ],
            )
          else
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 75),
                child: const Text(
                  "You haven't created any profiles yet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkGrey,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    SecondaryButton(
                      text: 'Add',
                      width: 100,
                      height: 45,
                      icon: const Icon(CustomIcons.plus,
                          color: Colors.white, size: 16),
                      onTap: () {
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) {
                            return BlocProvider<ProfilesEditorCubit>.value(
                              value: context.read<ProfilesEditorCubit>(),
                              child: CreateProfileModal(),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
