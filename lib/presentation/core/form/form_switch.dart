import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

class FormSwitch extends StatefulWidget {
  const FormSwitch({
    Key key,
    @required this.name,
    this.initialValue = false,
    this.validator,
    this.toggleSize = 20.0,
    this.valueFontSize = 16.0,
    this.borderRadius = 10.0,
  });

  final String name;
  final bool initialValue;
  final FormFieldValidator<bool> validator;

  final double toggleSize;
  final double valueFontSize;
  final double borderRadius;

  @override
  _FormSwitchState createState() => _FormSwitchState();
}

class _FormSwitchState extends State<FormSwitch>
    with SingleTickerProviderStateMixin {
  Animation<Alignment> _toggleAnimation;
  AnimationController _animationController;
  bool value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
    _animationController = AnimationController(
      vsync: this,
      value: value ? 1.0 : 0.0,
      duration: Duration(milliseconds: 60),
    );
    _toggleAnimation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> _switchColor =
        value ? [kPinkColor, kVioletColor] : [kLighGrey, kLighGrey];

    return FormBuilderField(
        name: widget.name,
        initialValue: widget.initialValue,
        validator: widget.validator,
        builder: (FormFieldState<bool> field) {
          return Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  value = !value;
                  field.didChange(value);
                });

                if (value)
                  _animationController.forward();
                else
                  _animationController.reverse();
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return Container(
                        width: 40.0,
                        height: 20.0,
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(widget.borderRadius),
                          gradient: LinearGradient(
                            colors: _switchColor,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _toggleAnimation.value == Alignment.centerRight
                                ? Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                    ),
                                  )
                                : Container(),
                            Align(
                              alignment: _toggleAnimation.value,
                              child: Container(
                                width: widget.toggleSize,
                                height: widget.toggleSize,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            _toggleAnimation.value == Alignment.centerLeft
                                ? Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      alignment: Alignment.centerRight,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      );
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        color: kLighGrey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
