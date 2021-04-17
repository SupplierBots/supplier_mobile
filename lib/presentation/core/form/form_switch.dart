import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/color_extensions.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';

class FormSwitch extends StatelessWidget {
  const FormSwitch({
    @required this.name,
    @required this.label,
    this.validator,
    this.toggleSize = 20.0,
    this.valueFontSize = 16.0,
    this.borderRadius = 10.0,
  });

  final String name;
  final String label;
  final FormFieldValidator<bool> validator;

  final double toggleSize;
  final double valueFontSize;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: name,
      validator: validator,
      valueTransformer: (bool value) {
        return value ?? false;
      },
      builder: (FormFieldState<bool> field) {
        final current = field.value ?? false;

        return HookBuilder(
          builder: (context) {
            final _animationController = useAnimationController(
              duration: const Duration(milliseconds: 60),
              initialValue: current ? 1 : 0,
            );

            final _toggleAnimation = useAnimation(AlignmentTween(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).animate(
              CurvedAnimation(
                parent: _animationController,
                curve: Curves.linear,
              ),
            ));

            return Center(
              child: GestureDetector(
                onTap: () {
                  field.didChange(!current);
                  getIt<Vibrate>().tap(context);

                  if (field.value) {
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
                            gradient: current
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
                                        horizontal: 4.0),
                                  ),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
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
                        label,
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
      },
    );
  }
}
