import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWithGoogle extends StatelessWidget {
  final String svg;
 final String title;
  const LoginWithGoogle({super.key, required this.svg, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
     // margin: EdgeInsets.all(50),
height: 40.h,
width: 330.w,
decoration: BoxDecoration(
  color: ColorsManager.darkBlue,
  borderRadius: BorderRadius.circular(17)),
child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SvgPicture.asset(svg,height: 20,),
  Text( title,style: TextStyles.font15WhiteMedium)
],),

    );
  }
}