import 'package:flutter/material.dart';

class InProgressState extends StatelessWidget {
  const InProgressState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30),
      child: const SizedBox(
        height: 40,
        width: 40,
        child: CircularProgressIndicator(
          strokeWidth: 4,
        ),
      ),
    );
  }
}
