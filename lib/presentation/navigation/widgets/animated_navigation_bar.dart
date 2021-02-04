import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';

class AnimatedNavigationBar extends StatelessWidget {
  const AnimatedNavigationBar(this.controller);
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0, 1),
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut)),
      transformHitTests: false,
      child: const NavigationBar(),
    );
  }
}
