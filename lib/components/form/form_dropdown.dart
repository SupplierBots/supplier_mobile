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
  bool _isOpened = false;

  @override
  void initState() {
    _selectedItem = widget.placeholder;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: widget.name,
      validator: (value) {
        if (widget.isRequired && _selectedItem == widget.placeholder) {
          return 'Required';
        }
        return widget.validator?.call(value);
      },
      builder: (FormFieldState<String> field) {
        return MenuButton(
          child: FormDropdownItem(_selectedItem),
          items: widget.items,
          topDivider: false,
          popupHeight: 200,
          scrollPhysics: ClampingScrollPhysics(),
          itemBuilder: (value) => Container(
            color: kSecondaryBackground,
            width: 83,
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              //decoration: BoxDecoration(gradient: kPrimaryGradient),
              child: value == _selectedItem
                  ? ShaderMask(
                      shaderCallback: (bounds) => kPrimaryGradient.createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Text(
                      value,
                      style: TextStyle(color: kLighGrey),
                    ),
            ),
          ),
          toggledChild: Container(
            color: kSecondaryBackground,
            child: FormDropdownItem(_selectedItem),
          ),
          divider: SizedBox(),
          onItemSelected: (value) {
            setState(
              () {
                _selectedItem = value;
                field.didChange(value);
              },
            );
          },
          decoration: BoxDecoration(
            color: kSecondaryBackground,
            border: false
                // ignore: dead_code
                ? Border.all(color: kPinkColor)
                : Border.all(color: kSecondaryBackground),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            //color: kSecondaryBackground,
          ),
          onMenuButtonToggle: (value) {
            setState(() {
              print(value);
              _isOpened = value;
            });
          },
        );
      },
    );
  }
}
