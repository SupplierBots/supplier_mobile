import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

class FormDropdownPopupRoute<T> extends PopupRoute<T> {
  FormDropdownPopupRoute({
    final this.position,
    final this.items,
    final this.popupHeight,
    final this.buttonWidth,
  });

  final RelativeRect position;
  final List<Widget> items;
  final double popupHeight;
  final double buttonWidth;

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Duration get transitionDuration => const Duration();

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) =>
      MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        removeLeft: true,
        removeRight: true,
        child: Builder(
          builder: (BuildContext context) {
            return CustomSingleChildLayout(
              delegate: _DropdownPopupLayout(
                position,
              ),
              child: _DropdownPopup<T>(
                route: this,
                popupHeight: popupHeight,
                buttonWidth: buttonWidth,
              ),
            );
          },
        ),
      );
}

// Positioning of the menu on the screen.
class _DropdownPopupLayout extends SingleChildLayoutDelegate {
  _DropdownPopupLayout(this.position);

  // Rectangle of underlying button, relative to the overlay's dimensions.
  final RelativeRect position;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    // The menu can be at most the size of the overlay minus 8.0 pixels in each
    // direction.
    return BoxConstraints.loose(constraints.biggest);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) =>
      Offset(position.left, position.top);

  @override
  bool shouldRelayout(_DropdownPopupLayout oldDelegate) =>
      position != oldDelegate.position;
}

class _DropdownPopup<T> extends StatefulWidget {
  const _DropdownPopup({
    Key key,
    this.route,
    this.popupHeight,
    @required this.buttonWidth,
  }) : super(key: key);

  final FormDropdownPopupRoute<T> route;
  final double popupHeight;
  final double buttonWidth;

  @override
  _DropdownPopupState<T> createState() => _DropdownPopupState<T>();
}

class _DropdownPopupState<T> extends State<_DropdownPopup<T>> {
  final GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const radius = BorderRadius.only(
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    );

    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          gradient: kPrimaryGradient,
          borderRadius: radius,
        ),
        child: Container(
          key: key,
          width: widget.buttonWidth - 4,
          height: widget.popupHeight,
          decoration: const BoxDecoration(
            color: kSecondaryBackground,
            borderRadius: radius,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(20, 0, 0, 0),
                offset: Offset(1.0, 3.0),
                blurRadius: 5.0,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: ListBody(children: [
                Container(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: SingleChildScrollView(
                      child: ListBody(
                        children: widget.route.items,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
