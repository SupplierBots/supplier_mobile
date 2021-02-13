import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_list_tile.dart';

class ProfilesList extends StatelessWidget {
  const ProfilesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilesBloc, ProfilesState>(
      builder: (context, state) {
        final container = state.profiles.isNotEmpty
            ? Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: kPrimaryElementsSpacing,
                  children: state.profiles.entries
                      .map((profile) => ProfilesListTile(name: profile.key))
                      .toList(),
                ),
              )
            : Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 125),
                  child: const Text(
                    "You haven't created any profiles yet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kDarkGrey,
                      fontSize: 18,
                    ),
                  ),
                ),
              );
        return container;
      },
    );
  }
}
