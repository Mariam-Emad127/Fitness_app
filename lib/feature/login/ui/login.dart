import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/login/ui/widget/login_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
backgroundColor: ColorsManager.darkGray,
body: Center(
  child: Column(children: [
    SizedBox(height:20.h,),
  Image.asset( "assets/Screenshot 2025-07-10 021942.png",height: 200,width:300,),
  Text("Let's login you in",style: TextStyles.font20WhiteMedium,),
  Text("Log in to pick up where you left off.your habits,\n    streek,and progress are waiting for you.",
  style: TextStyles.font12GrayRegular,),

    SizedBox(height:30.h,),
LoginWithGoogle()
  ],),
),
    );
  }
}