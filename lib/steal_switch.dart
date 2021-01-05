import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants.dart';

class StealSwitch extends StatefulWidget {
  const StealSwitch({
    Key key,
    @required this.value,
    @required this.onToggle,
    this.activeColor = kVioletColor,
    this.inactiveColor = kDarkGrey,
    this.activeTextColor = kLighGrey,
    this.inactiveTextColor = kLighGrey,
    this.toggleColor,
    this.activeToggleColor,
    this.inactiveToggleColor,
    this.width = 70.0,
    this.height = 35.0,
    this.toggleSize = 25.0,
    this.valueFontSize = 16.0,
    this.borderRadius = 20.0,
    this.padding = 4.0,
    this.showOnOff = false,
    this.activeText,
    this.inactiveText,
    this.activeTextFontWeight,
    this.inactiveTextFontWeight,
    this.switchBorder,
    this.activeSwitchBorder,
    this.inactiveSwitchBorder,
    this.toggleBorder,
    this.activeToggleBorder,
    this.inactiveToggleBorder,
    this.activeIcon,
    this.inactiveIcon,
  })  : assert(
            (toggleColor == null || activeToggleColor == null) &&
                (toggleColor == null || inactiveToggleColor == null),
            'Cannot provide toggleColor when an activeToggleColor or inactiveToggleColor was given\n'
            'To give the toggle a color, use "activeToggleColor: color" and "inactiveToggleColor: color".'),
        assert(
            (switchBorder == null || activeSwitchBorder == null) &&
                (switchBorder == null || inactiveSwitchBorder == null),
            'Cannot provide switchBorder when an activeSwitchBorder or inactiveSwitchBorder was given\n'
            'To give the switch a border, use "activeSwitchBorder: border" or "inactiveSwitchBorder: border".'),
        assert(
            (toggleBorder == null || activeToggleBorder == null) &&
                (toggleBorder == null || inactiveToggleBorder == null),
            'Cannot provide toggleBorder when an activeToggleBorder or inactiveToggleBorder was given\n'
            'To give the toggle a border, use "activeToggleBorder: color" or "inactiveToggleBorder: color".'),
        super(key: key);

  final bool value;
  final ValueChanged<bool> onToggle;
  final bool showOnOff;
  final String activeText;
  final String inactiveText;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeTextColor;
  final Color inactiveTextColor;
  final FontWeight activeTextFontWeight;
  final FontWeight inactiveTextFontWeight;
  final Color toggleColor;
  final Color activeToggleColor;
  final Color inactiveToggleColor;
  final double width;
  final double height;
  final double toggleSize;
  final double valueFontSize;
  final double borderRadius;
  final double padding;
  final BoxBorder switchBorder;
  final BoxBorder activeSwitchBorder;
  final BoxBorder inactiveSwitchBorder;
  final BoxBorder toggleBorder;
  final BoxBorder activeToggleBorder;
  final BoxBorder inactiveToggleBorder;
  final Icon activeIcon;
  final Icon inactiveIcon;

  @override
  _FlutterSwitchState createState() => _FlutterSwitchState();
}

class _FlutterSwitchState extends State<StealSwitch>
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
  void didUpdateWidget(StealSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value == widget.value) return;

    if (widget.value)
      _animationController.forward();
    else
      _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    Color _toggleColor = Colors.white;
    Color _switchColor = Colors.white;
    Border _switchBorder;
    Border _toggleBorder;
    Widget _icon;

    if (widget.value) {
      _toggleColor = widget.activeToggleColor ?? widget.toggleColor;
      _switchColor = widget.activeColor;
      _switchBorder = widget.activeSwitchBorder ?? widget.switchBorder;
      _toggleBorder = widget.activeToggleBorder ?? widget.toggleBorder;
      _icon = widget.activeIcon;
    } else {
      _toggleColor = widget.inactiveToggleColor ?? widget.toggleColor;
      _switchColor = widget.inactiveColor;
      _switchBorder = widget.inactiveSwitchBorder ?? widget.switchBorder;
      _toggleBorder = widget.inactiveToggleBorder ?? widget.toggleBorder;
      _icon = widget.inactiveIcon;
    }

    return AnimatedBuilder(
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
            width: widget.width,
            height: widget.height,
            padding: EdgeInsets.all(widget.padding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: _switchColor,
              border: _switchBorder,
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
                      color: _toggleColor ?? Colors.white,
                      border: _toggleBorder,
                    ),
                    child: _icon,
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
    );
  }
}
