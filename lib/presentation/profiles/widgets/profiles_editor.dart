import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/domain/profiles/profile.dart';
import 'package:supplier_mobile/presentation/core/edit_header.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/animated_navigation_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/create_profile_modal.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_form.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_list.dart';

class ProfilesEditor extends StatefulWidget {
  const ProfilesEditor({
    Key key,
  }) : super(key: key);

  @override
  _ProfilesEditorState createState() => _ProfilesEditorState();
}

class _ProfilesEditorState extends State<ProfilesEditor>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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

    return BlocConsumer<ProfilesEditorBloc, ProfilesEditorState>(
        listener: (context, state) {
      if (state.isEditing) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }, builder: (context, state) {
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
            CreateProfileModal()
          ],
        ),
        extendBody: true,
        bottomNavigationBar: AnimatedNavigationBar(_controller),
      );
    });
  }
}
