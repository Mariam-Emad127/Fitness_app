import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottonWidget extends StatelessWidget {
 final void Function() onTap;
 final String title;
  const BottonWidget({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onTap,

      child: Container(    alignment: Alignment.center,
       // margin: EdgeInsets.all(50),
      height: 45.h,
      width: 345.w,
      decoration: BoxDecoration(
        color: ColorsManager.mainYellow,
        borderRadius: BorderRadius.circular(20)),
        child: Text(title,style: TextStyles.font14DarkBlueBold,),
        ),
    );
  }
}