import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class CaptchaButton extends StatelessWidget {
  const CaptchaButton({
    Key key,
    @required this.solveAction,
  }) : super(key: key);

  final VoidCallback solveAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: solveAction,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GradientWidget(
            child: Padding(
              padding: const EdgeInsets.only(right: 2),
              child: Container(
                width: 100,
                height: 40,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.white),
                    left: BorderSide(color: Colors.white),
                    right: BorderSide(color: Colors.white),
                    bottom: BorderSide(color: Colors.white),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 28.0),
                    child: Text(
                      'Solve',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 10,
            child: Image.asset(
              'assets/images/Captcha.png',
              height: 30,
            ),
          ),
          const Positioned(
            top: -10,
            right: -11,
            child: GradientWidget(
              child: Icon(
                Icons.error,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
