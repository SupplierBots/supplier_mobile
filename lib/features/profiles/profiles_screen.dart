import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/gradient_widget.dart';
import 'package:supplier_mobile/components/navigation/navigation_bar.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/custom_icons.dart';
import 'package:supplier_mobile/features/profiles/widgets/create_profile_modal.dart';
import 'package:supplier_mobile/features/profiles/widgets/profiles_form.dart';
import 'package:supplier_mobile/components/edit_header.dart';
import 'package:supplier_mobile/features/profiles/widgets/profiles_list.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

class ProfilesScreen extends StatelessWidget {
  static const String route = 'profiles';

  @override
  Widget build(BuildContext context) {
    final ProfilesProvider state = Provider.of<ProfilesProvider>(context);

    return Scaffold(
      appBar: TopBar(
        content: EditHeader(
          primaryText: 'Profiles',
          secondaryText: state.editedProfileName,
          isEditing: state.isEditing,
          undoAction: state.stopEditing,
          confirmAction: state.saveEditedProfile,
        ),
      ),
      floatingActionButton: !state.isEditing && !state.isModalOpen
          ? FloatingActionButton(
              backgroundColor: kSecondaryBackground,
              onPressed: state.openModal,
              child: const GradientWidget(
                child: Icon(
                  CustomIcons.plus,
                  size: 20,
                ),
              ),
            )
          : null,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              widthFactor: kMainContentScreenWidth,
              child: state.isEditing ? ProfilesForm() : const ProfilesList(),
            ),
          ),
          if (state.isModalOpen)
            Container(
              color: Colors.black.withOpacity(0.2),
              child: CreateProfileModal(),
            )
        ],
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
