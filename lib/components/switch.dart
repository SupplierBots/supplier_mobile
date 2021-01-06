import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class Switcher extends StatefulWidget {
  const Switcher({
    Key key,
    @required this.name,
    @required this.value,
    @required this.onToggle,
    this.toggleSize = 20.0,
    this.valueFontSize = 16.0,
    this.borderRadius = 10.0,
  });

  final String name;
  final bool value;
  final ValueChanged<bool> onToggle;

  final double toggleSize;
  final double valueFontSize;
  final double borderRadius;

  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher>
    with SingleTickerProviderStateMixin {
  Animation _toggleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: widget.value ? 1.0 : 0.0,
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
  void didUpdateWidget(Switcher oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value == widget.value) return;

    if (widget.value)
      _animationController.forward();
    else
      _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> _switchColor =
        widget.value ? [kPinkColor, kVioletColor] : [kLighGrey, kLighGrey];

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return GestureDetector(
                onTap: () {
                  if (widget.value)
                    _animationController.forward();
                  else
                    _animationController.reverse();

                  widget.onToggle(!widget.value);
                },
                child: Container(
                  width: 40.0,
                  height: 20.0,
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
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
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                              ),
                            )
                          : Container(),
                      Align(
                        alignment: _toggleAnimation.value,
                        child: Container(
                          width: widget.toggleSize,
                          height: widget.toggleSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      _toggleAnimation.value == Alignment.centerLeft
                          ? Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                alignment: Alignment.centerRight,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              );
            },
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              widget.name,
              style: TextStyle(
                color: kLighGrey,
                fontSize: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
