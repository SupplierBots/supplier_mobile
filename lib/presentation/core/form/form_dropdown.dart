import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown_item.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown_popup.dart';
import 'package:supplier_mobile/presentation/core/color_extensions.dart';
import 'package:supplier_mobile/presentation/core/gradient_border_container.dart';

class FormDropdown extends HookWidget {
  const FormDropdown({
    Key key,
    @required this.name,
    @required this.items,
    @required this.placeholder,
    this.isRequired = true,
    this.validator,
    this.onChange,
  }) : super(key: key);

  final String name;
  final String placeholder;
  final List<String> items;
  final bool isRequired;
  final FormFieldValidator<String> validator;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    final _isMenuOpened = useState(false);

    final radius = BorderRadius.only(
      topLeft: const Radius.circular(10.0),
      topRight: const Radius.circular(10.0),
      bottomLeft: Radius.circular(_isMenuOpened.value ? 0 : 10.0),
      bottomRight: Radius.circular(_isMenuOpened.value ? 0 : 10.0),
    );

    return FormBuilderField<String>(
      name: name,
      validator: (String value) {
        if (isRequired && value == null) {
          return 'Required';
        }
        return validator?.call(value);
      },
      builder: (FormFieldState<String> field) {
        Future<void> toggleMenu() async {
          FocusManager.instance.primaryFocus.unfocus();
          _isMenuOpened.value = !_isMenuOpened.value;

          if (!_isMenuOpened.value) return;

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

          if (items.isEmpty) return;

          final valueFromPopup = await Navigator.push(
            context,
            FormDropdownPopupRoute<String>(
              position: position,
              items: items
                  .map((value) => FormDropdownItem(
                        value: value,
                        isSelected: value == field.value,
                      ))
                  .toList(),
              popupHeight: math.min(
                200,
                FormDropdownItem.height * items.length + 10,
              ),
              buttonWidth: button.size.width,
            ),
          );

          _isMenuOpened.value = !_isMenuOpened.value;
          if (valueFromPopup == null) return;
          field.didChange(valueFromPopup);
          onChange?.call(valueFromPopup);
        }

        LinearGradient getGradient() {
          if (_isMenuOpened.value) {
            return kPrimaryGradient;
          }

          if (field.hasError) {
            return kRedGradient;
          }

          return kSecondaryBackground.toLinearGradient();
        }

        Color getIconColor() {
          if (_isMenuOpened.value) {
            return kVioletColor;
          }

          if (field.hasError) {
            return kRed;
          }

          return kDarkGrey;
        }

        return GestureDetector(
          onTap: toggleMenu,
          child: Column(
            children: [
              GradientBorderContainer(
                height: kInputsHeight,
                borderGradient: getGradient(),
                borderRadius: radius,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          field.value ?? placeholder,
                          style: TextStyle(
                            color:
                                field.value != null ? kLightPurple : kLighGrey,
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
            ],
          ),
        );
      },
    );
  }
}
