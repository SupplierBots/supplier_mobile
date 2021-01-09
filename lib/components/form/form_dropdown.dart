import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:menu_button/menu_button.dart';
import 'package:supplier_mobile/components/form/form_dropdown_item.dart';
import 'package:supplier_mobile/constants/colors.dart';

class FormDropdown extends StatefulWidget {
  const FormDropdown({
    Key key,
    @required this.name,
    @required this.items,
    @required this.placeholder,
    this.isRequired = false,
    this.validator,
  }) : super(key: key);

  final String name;
  final String placeholder;
  final List<String> items;
  final bool isRequired;
  final FormFieldValidator<String> validator;

  @override
  _FormDropdownState createState() => _FormDropdownState();
}

class _FormDropdownState extends State<FormDropdown> {
  String _selectedItem;
  bool _hasError = false;

  @override
  void initState() {
    _selectedItem = widget.placeholder;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String>(
      name: widget.name,
      validator: (String value) {
        if (widget.isRequired && _selectedItem == widget.placeholder) {
          setState(() {
            _hasError = true;
          });
          return 'Required';
        }
        return widget.validator?.call(value);
      },
      builder: (FormFieldState<String> field) {
        return MenuButton<String>(
          items: widget.items,
          topDivider: false,
          popupHeight: 200,
          scrollPhysics: const ClampingScrollPhysics(),
          itemBuilder: (String value) => Container(
            color: kSecondaryBackground,
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              //decoration: BoxDecoration(gradient: kPrimaryGradient),
              child: value == _selectedItem
                  ? ShaderMask(
                      shaderCallback: (Rect bounds) =>
                          kPrimaryGradient.createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        value,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Text(
                      value,
                      style: const TextStyle(color: kLighGrey),
                    ),
            ),
          ),
          toggledChild: FormDropdownItem(_selectedItem),
          divider: const SizedBox(),
          onItemSelected: (String value) {
            setState(
              () {
                _selectedItem = value;
                field.didChange(value);
              },
            );
          },
          decoration: BoxDecoration(
            color: kSecondaryBackground,
            border: Border.all(color: kSecondaryBackground),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            //color: kSecondaryBackground,
          ),
          onMenuButtonToggle: (bool value) {
            setState(() {});
          },
          child: FormDropdownItem(_selectedItem),
        );
      },
    );
  }
}
