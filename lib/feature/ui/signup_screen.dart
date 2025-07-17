import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/app_text_form_field.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:fitness/feature/ui/wedgit/remmeberme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: ColorsManager.darkGray,

body: SafeArea(child: Center(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(height: 40,),
      Text("Create an Account ",style: TextStyles.font22WhiteMedium,),
      Text("Create an Account to set a .tracck your progress goal \n       and stay motavated every step on way.",
      style: TextStyles.font12GrayRegular,),
    
        SizedBox(height:40.h,),
                        AppTextFormField(hintText:  "Name", validator: (val){} ),
                          SizedBox(height:20.h,),
                AppTextFormField(hintText:  "Email", validator: (val){} ),
                          SizedBox(height:20.h,),
    
              AppTextFormField(hintText:  "Password", validator: (val){} ),
                          SizedBox(height:20.h,),
                                          AppTextFormField(hintText:  "comfirm password", validator: (val){} ),
                          SizedBox(height:20.h,),              

                          Remmeberme(),
              BottonWidget(onTap:  (){}, title:  "Create an Account ",)
          
    
    ],),
  ),
)),

    );
  }
}