import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/presentation/core/gradient_border_container.dart';

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

class _DropdownPopup<T> extends HookWidget {
  _DropdownPopup({
    Key key,
    this.route,
    this.popupHeight,
    @required this.buttonWidth,
  }) : super(key: key);

  final FormDropdownPopupRoute<T> route;
  final double popupHeight;
  final double buttonWidth;

  final GlobalKey popupKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const radius = BorderRadius.only(
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    );

    return Material(
      color: Colors.transparent,
      child: GradientBorderContainer(
        key: popupKey,
        borderRadius: radius,
        width: buttonWidth,
        height: popupHeight,
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
                      children: route.items,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
