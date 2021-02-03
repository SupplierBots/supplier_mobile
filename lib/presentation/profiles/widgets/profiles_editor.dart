import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/domain/profiles/profile.dart';
import 'package:supplier_mobile/presentation/core/edit_header.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/create_profile_modal.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_form.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_list.dart';

class ProfilesEditor extends StatelessWidget {
  ProfilesEditor({
    Key key,
  }) : super(key: key);

  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    void _submitProfile() {
      if (!formKey.currentState.saveAndValidate()) return;

      final profileName =
          context.read<ProfilesEditorBloc>().state.editedProfile;
      final profile = Profile.fromJson(formKey.currentState.value);

      context.read<ProfilesBloc>().add(ProfilesEvent.setProfile(
            name: profileName,
            profile: profile,
          ));
      context.read<ProfilesEditorBloc>().add(const Saved());
    }

    return BlocBuilder<ProfilesEditorBloc, ProfilesEditorState>(
        builder: (context, state) {
      return Scaffold(
        appBar: TopBar(
          content: EditHeader(
            primaryText: 'Profiles',
            secondaryText: state.editedProfile,
            isEditing: state.isEditing,
            undoAction: () {
              context.read<ProfilesEditorBloc>().add(const Canceled());
            },
            confirmAction: _submitProfile,
          ),
        ),
        floatingActionButton: !state.isEditing && !state.isModalOpen
            ? FloatingActionButton(
                backgroundColor: kSecondaryBackground,
                onPressed: () {
                  context.read<ProfilesEditorBloc>().add(const OpenedModal());
                },
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
                child: state.isEditing
                    ? ProfilesForm(
                        formKey: formKey,
                      )
                    : const ProfilesList(),
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
    });
  }
}
