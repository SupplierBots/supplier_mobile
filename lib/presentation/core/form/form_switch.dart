import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/color_extensions.dart';

class FormSwitch extends HookWidget {
  const FormSwitch({
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
  Widget build(BuildContext context) {
    final current = useState(false);
    useMemoized(() {
      current.value = initialValue;
    });

    final _animationController = useAnimationController(
      duration: const Duration(milliseconds: 60),
      initialValue: current.value ? 1.0 : 0.0,
    );

    final _toggleAnimation = useAnimation(AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    ));

    return FormBuilderField(
      name: name,
      initialValue: initialValue,
      validator: validator,
      builder: (FormFieldState<bool> field) {
        return Center(
          child: GestureDetector(
            onTap: () {
              current.value = !current.value;
              field.didChange(current.value);

              if (current.value) {
                _animationController.forward();
              } else {
                _animationController.reverse();
              }
            },
            child: Row(
              children: [
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Container(
                      width: 40.0,
                      height: 20.0,
                      padding: const EdgeInsets.all(1.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        gradient: current.value
                            ? kPrimaryGradient
                            : kLighGrey.toLinearGradient(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          if (_toggleAnimation == Alignment.centerRight)
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0)),
                            )
                          else
                            Container(),
                          Align(
                            alignment: _toggleAnimation,
                            child: Container(
                              width: toggleSize,
                              height: toggleSize,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          if (_toggleAnimation == Alignment.centerLeft)
                            Expanded(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                alignment: Alignment.centerRight,
                              ),
                            )
                          else
                            Container(),
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: kLighGrey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
