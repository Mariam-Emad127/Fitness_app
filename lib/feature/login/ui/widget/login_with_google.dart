import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

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
  Text( "Login with google",style: TextStyles.font15WhiteMedium)
],),

    );
  }
}