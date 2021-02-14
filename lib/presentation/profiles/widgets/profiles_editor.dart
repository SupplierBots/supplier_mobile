import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_cubit.dart';
import 'package:supplier_mobile/domain/profiles/profile.dart';
import 'package:supplier_mobile/presentation/core/edit_header.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/animated_navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/create_profile_modal.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/form/profiles_form.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_list.dart';

class ProfilesEditor extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormBuilderState>());
    final _controller = useAnimationController(
      duration: const Duration(milliseconds: 250),
    );

    bool _submitProfile() {
      FocusManager.instance.primaryFocus.unfocus();
      if (!formKey.currentState.saveAndValidate()) return false;

      final profileName =
          context.read<ProfilesEditorCubit>().state.editedProfile;
      final profile = Profile.fromJson(formKey.currentState.value);

      context.read<ProfilesCubit>().setProfile(profileName, profile);
      context.read<ProfilesEditorCubit>().finishedEditing();
      return true;
    }

    return BlocConsumer<ProfilesEditorCubit, ProfilesEditorState>(
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
            cancelAction: () {
              formKey.currentState.save();
              final showAlert = formKey.currentState.initialValue == null ||
                  Profile.fromJson(formKey.currentState.initialValue) !=
                      Profile.fromJson(formKey.currentState.value);
              return Tuple2(showAlert, () {
                context.read<ProfilesEditorCubit>().finishedEditing();
              });
            },
            confirmAction: _submitProfile,
          ),
        ),
        floatingActionButton: !state.isEditing
            ? Padding(
                padding: const EdgeInsets.all(15.0),
                child: FloatingActionButton(
                  backgroundColor: kSecondaryBackground,
                  onPressed: () {
                    Vibrate.tap();
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
                  child: const GradientWidget(
                    child: Icon(
                      CustomIcons.plus,
                      size: 20,
                    ),
                  ),
                ),
              )
            : null,
        body: Align(
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
        extendBody: true,
        bottomNavigationBar: AnimatedNavigationBar(_controller),
      );
    });
  }
}
