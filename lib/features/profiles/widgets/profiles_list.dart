import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/features/profiles/widgets/profiles_list_tile.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/profiles/profile_model.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

class ProfilesList extends StatelessWidget {
  const ProfilesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Consumer<ProfilesProvider>(
        builder: (_, ProfilesProvider state, __) {
          return state.profiles.isNotEmpty
              ? Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: kPrimaryElementsSpacing,
                  children: state.profiles.entries
                      .map((MapEntry<String, Profile> e) => ProfilesListTile(
                            name: e.key,
                            editAction: () {
                              state.setEditedProfile(e.key);
                            },
                            deleteAction: () {
                              state.removeProfile(e.key);
                            },
                          ))
                      .toList())
              : const Center(
                  child: Text(
                    "You haven't created any profiles yet",
                    style: TextStyle(color: kDarkGrey),
                  ),
                );
        },
      ),
    );
  }
}
