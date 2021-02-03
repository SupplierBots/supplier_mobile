import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/profiles_editor.dart';

class ProfilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfilesEditorBloc(),
      child: ProfilesEditor(),
    );
  }
}
