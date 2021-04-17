import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_list_tile.dart';

class ProfilesList extends StatelessWidget {
  const ProfilesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfilesCubit>().state;

    if (state.profiles.isNotEmpty) {
      return ListView(
        children: [
          const SizedBox(height: 20),
          for (var profile in state.profiles.entries) ...[
            ProfilesListTile(
              name: profile.key,
              profile: profile.value,
            ),
            const SizedBox(height: kPrimaryElementsSpacing)
          ]
        ],
      );
    }

    return Center(
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
  }
}
