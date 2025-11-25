import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class AppbarWedgit extends StatelessWidget {
  const AppbarWedgit({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.mainYellow),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
          color: ColorsManager.mainYellow,
        ),
      ),
    );
  }
}
