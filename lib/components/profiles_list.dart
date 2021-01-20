import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/profiles_list_tile.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/models/profile.dart';
import 'package:supplier_mobile/state/profiles_state.dart';

class ProfilesList extends StatelessWidget {
  const ProfilesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Consumer<ProfilesState>(
        builder: (_, ProfilesState state, __) {
          return Wrap(
              alignment: WrapAlignment.center,
              runSpacing: kPrimaryElementsSpacing,
              children: state.profiles.entries
                  .map((MapEntry<String, Profile> e) => ProfilesListTile(
                        name: e.value.firstName,
                        editAction: () {},
                        deleteAction: () {
                          state.removeProfile(e.key);
                        },
                      ))
                  .toList());
        },
      ),
    );
  }
}
