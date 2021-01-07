import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';
import 'package:supplier_mobile/components/dropbox_item.dart';
import 'package:supplier_mobile/constants/colors.dart';

class DropBoxMenuButton extends StatefulWidget {
  const DropBoxMenuButton({Key key, @required this.items, this.onChange})
      : super(key: key);

  final List<String> items;
  final void Function(String) onChange;

  @override
  _DropBoxMenuButtonState createState() => _DropBoxMenuButtonState();
}

class _DropBoxMenuButtonState extends State<DropBoxMenuButton> {
  String selectedItem = 'Choose Country';
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return MenuButton(
      child: DropBoxItem(selectedItem),
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
          child: value == selectedItem
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
        child: DropBoxItem(selectedItem),
      ),
      divider: Container(
        height: 0,
      ),
      onItemSelected: (value) {
        setState(
          () {
            selectedItem = value;
            widget.onChange(selectedItem);
          },
        );
      },
      decoration: BoxDecoration(
        color: kSecondaryBackground,
        border: true
            ? Border.all(color: kPinkColor)
            : Border.all(color: kSecondaryBackground),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        //color: kSecondaryBackground,
      ),
      onMenuButtonToggle: (value) {
        setState(() {
          print(value);
          isOpened = value;
        });
      },
    );
  }
}
