// ignore_for_file: must_be_immutable

import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class FloatingWidget extends StatelessWidget {

    FloatingWidget({super.key});
  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
 
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          shape: const CircleBorder(),
        backgroundColor: ColorsManager.mainYellow,
        child: Icon(
          Icons.brightness_3,
          color: ColorsManager.darkGray//AppTheme.colorGray,
        ),
        onPressed: () {
          _fabAnimationController.reset();
          _borderRadiusAnimationController.reset();
          _borderRadiusAnimationController.forward();
          _fabAnimationController.forward();
        },
      );
      
      
  }
}