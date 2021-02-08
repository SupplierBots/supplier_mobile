import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown_item.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown_popup.dart';
import 'package:supplier_mobile/presentation/core/color_extensions.dart';

class FormDropdown extends StatefulWidget {
  const FormDropdown({
    Key key,
    @required this.name,
    @required this.items,
    @required this.placeholder,
    this.isRequired = true,
    this.validator,
  }) : super(key: key);

  final String name;
  final String placeholder;
  final List<String> items;
  final bool isRequired;
  final FormFieldValidator<String> validator;

  @override
  State<StatefulWidget> createState() => _FormDropdownState();
}

class _FormDropdownState extends State<FormDropdown> {
  bool _isMenuOpened = false;
  String _selectedItem;
  bool get hasSelectedItem => _selectedItem != null;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.only(
      topLeft: const Radius.circular(10.0),
      topRight: const Radius.circular(10.0),
      bottomLeft: Radius.circular(_isMenuOpened ? 0 : 10.0),
      bottomRight: Radius.circular(_isMenuOpened ? 0 : 10.0),
    );

    return FormBuilderField<String>(
      name: widget.name,
      validator: (String value) {
        if (widget.isRequired && _selectedItem == null) {
          return 'Required';
        }
        return widget.validator?.call(value);
      },
      builder: (FormFieldState<String> field) {
        _selectedItem = field.value;

        Future<void> toggleMenu() async {
          FocusManager.instance.primaryFocus.unfocus();
          setState(() => _isMenuOpened = !_isMenuOpened);

          if (!_isMenuOpened) return;

          final RenderBox button = context.findRenderObject() as RenderBox;
          final RenderBox overlay =
              Overlay.of(context).context.findRenderObject() as RenderBox;

          final RelativeRect position = RelativeRect.fromRect(
            Rect.fromPoints(
              button.localToGlobal(
                button.size.bottomLeft(Offset.zero),
                ancestor: overlay,
              ),
              button.localToGlobal(
                button.size.bottomRight(Offset.zero),
                ancestor: overlay,
              ),
            ),
            const Offset(0, -4) & overlay.size,
          );

          if (widget.items.isEmpty) return;

          final valueFromPopup = await Navigator.push(
            context,
            FormDropdownPopupRoute<String>(
              position: position,
              items: widget.items
                  .map((value) => FormDropdownItem(
                        value: value,
                        isSelected: value == _selectedItem,
                      ))
                  .toList(),
              popupHeight: math.min(
                200,
                FormDropdownItem.height * widget.items.length + 10,
              ),
              buttonWidth: button.size.width,
            ),
          );

          setState(() {
            _isMenuOpened = !_isMenuOpened;
            if (valueFromPopup == null) return;
            field.didChange(valueFromPopup);
            _selectedItem = valueFromPopup;
          });
        }

        LinearGradient getGradient() {
          if (_isMenuOpened) {
            return kPrimaryGradient;
          }

          if (field.hasError) {
            return kRedGradient;
          }

          return kSecondaryBackground.toGradient();
        }

        Color getIconColor() {
          if (_isMenuOpened) {
            return kVioletColor;
          }

          if (field.hasError) {
            return kRed;
          }

          return kDarkGrey;
        }

        return GestureDetector(
          onTap: toggleMenu,
          child: Container(
            height: kInputsHeight,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: getGradient(),
              borderRadius: radius,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: kSecondaryBackground,
                borderRadius: radius,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        _selectedItem ?? widget.placeholder,
                        style: TextStyle(
                          color: hasSelectedItem ? kLightPurple : kLighGrey,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(
                          Icons.expand_more,
                          size: 35,
                          color: getIconColor(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
