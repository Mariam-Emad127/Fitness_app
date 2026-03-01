import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
 final IconData icon;
final  Function()  onPressed;
    const IconWidget({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return   Container(
    decoration: BoxDecoration(
      color:ColorsManager.lightBlue ,
      borderRadius: BorderRadius.circular(15 )
      ),
    child: IconButton(onPressed: onPressed , icon: Icon(icon), ),
   );
  }
}