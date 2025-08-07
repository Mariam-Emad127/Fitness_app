import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/profile/ui/widget/icon_widget.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      
 IconWidget(icon: Icons.arrow_back_ios_new, onPressed: () {},),
 Text("Account",style: TextStyles.font18WhiteMedium),
 IconWidget(icon: Icons.settings, onPressed: () {},)
   
    ],),
   );
  }
}