import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/app_text_form_field.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
backgroundColor: ColorsManager.darkGray,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
          
            SizedBox(height:20.h,),
            Image.asset( "assets/Screenshot 2025-07-10 021942.png",height: 200,width:300,),
              Text("Let's login you in",style: TextStyles.font20WhiteMedium,),

            AppTextFormField(hintText:  "Email", validator: (val){} ),
                        SizedBox(height:20.h,),

            AppTextFormField(hintText:  "Password", validator: (val){} ),
                        SizedBox(height:20.h,),

            BottonWidget(onTap:  (){}, title:  "Login ",)
        
            ],
          ),
        ),
      ),
    );
  }
}
