import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class StartIcon extends StatelessWidget {
  const StartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          color: ColorsManager.mainYellow,
          borderRadius: BorderRadius.circular(20)),
      child: Icon(
        Icons.play_circle_filled_sharp,
        color: Colors.black,
      ),
    );
  }
}
