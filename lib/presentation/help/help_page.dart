import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/edit_header.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown.dart';
import 'package:supplier_mobile/presentation/core/form/form_switch.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/header.dart';

import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';

import 'package:supplier_mobile/presentation/tasks/widgets/choosing_color_widget.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: EditHeader(
          primaryText: 'Tasks',
          secondaryText: 'Task #1',
          isEditing: true,
          cancelAction: () {
            return Tuple2(false, () {});
          },
          confirmAction: () => true,
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: FormBuilder(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kPrimaryElementsSpacing,
                ),
                const Header(text: 'Product details', underlineWidth: 220),
                const SizedBox(
                  height: kPrimaryElementsSpacing,
                ),
                const FormDropdown(
                    name: 'Select Item',
                    items: ['Swag', 'Swag', 'Swag'],
                    placeholder: 'Select Item'),
                const SizedBox(height: kPrimaryElementsSpacing),
                const ColorChoosing(),
                const SizedBox(
                  height: kPrimaryElementsSpacing,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: FormTextField(
                            name: 'enter colors', placeholder: 'Enter colors'),
                      ),
                    ),
                    const SecondaryButton(
                        text: 'Add', width: 85, height: 50, onTap: null),
                  ],
                ),
                const SizedBox(height: kPrimaryElementsSpacing),
                const FormDropdown(
                    name: 'Select Size',
                    items: ['Small', 'Medium', 'Large', 'Extreme Large'],
                    placeholder: 'Select Size'),
                const SizedBox(height: kPrimaryElementsSpacing),
                Row(
                  children: [
                    // const FormSwitch(name: 'Any color'),
                    // const SizedBox(width: 70),
                    // const FormSwitch(name: 'Any size'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
