import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/features/profiles/widgets/profiles_list_tile.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

class ProfilesList extends ConsumerWidget {
  const ProfilesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final ProfilesProvider state = watch(profilesProvider);

    List<ProfilesListTile> _getProfiles() {
      final List<ProfilesListTile> _list = <ProfilesListTile>[];
      for (int i = 0; i < state.profiles.length; i++) {
        final String key = state.profiles.keyAt(i) as String;
        _list.add(ProfilesListTile(
          name: key,
          editAction: () {
            state.setEditedProfile(key);
          },
          deleteAction: () {
            state.removeProfile(key);
          },
        ));
      }
      return _list;
    }

    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: state.profiles.isNotEmpty
          ? Wrap(
              alignment: WrapAlignment.center,
              runSpacing: kPrimaryElementsSpacing,
              children: _getProfiles())
          : const Center(
              child: Text(
                "You haven't created any profiles yet",
                style: TextStyle(color: kDarkGrey),
              ),
            ),
    );
  }
}
