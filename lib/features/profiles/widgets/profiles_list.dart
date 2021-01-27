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
    final ProfilesProvider profiles = watch(profilesProvider);

    List<ProfilesListTile> _getProfiles() {
      final List<ProfilesListTile> _list = <ProfilesListTile>[];
      for (final dynamic key in profiles.keys) {
        final String parsedKey = key as String;
        _list.add(ProfilesListTile(
          name: parsedKey,
          editAction: () {
            profiles.setEditedProfile(parsedKey);
          },
          deleteAction: () {
            profiles.removeProfile(parsedKey);
          },
        ));
      }
      return _list;
    }

    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: profiles.isNotEmpty
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
