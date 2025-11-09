import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeAnimationManager {
  late AnimationController fabController;
  late AnimationController borderRadiusController;
  late AnimationController hideBottomBarController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;

  HomeAnimationManager(TickerProvider vsync) {
    fabController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: vsync,
    );

    borderRadiusController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: vsync,
    );

    fabCurve = CurvedAnimation(
      parent: fabController,
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );

    borderRadiusCurve = CurvedAnimation(
      parent: borderRadiusController,
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );

    fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    borderRadiusAnimation =
        Tween<double>(begin: 0, end: 1).animate(borderRadiusCurve);

    hideBottomBarController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: vsync,
    );

    Future.delayed(const Duration(seconds: 1), () {
      fabController.forward();
      borderRadiusController.forward();
    });
  }

  bool handleScroll(ScrollNotification notification) {
    if (notification is UserScrollNotification &&
        notification.metrics.axis == Axis.vertical) {
      switch (notification.direction) {
        case ScrollDirection.forward:
          hideBottomBarController.reverse();
          fabController.forward(from: 0);
          break;
        case ScrollDirection.reverse:
          hideBottomBarController.forward();
          fabController.reverse(from: 1);
          break;
        case ScrollDirection.idle:
          break;
      }
    }
    return false;
  }

  void dispose() {
    fabController.dispose();
    borderRadiusController.dispose();
    hideBottomBarController.dispose();
  }
}
