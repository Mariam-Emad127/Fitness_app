import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/app_text_form_field.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:fitness/feature/login/controller/cubit/login_cubit.dart';
import 'package:fitness/feature/login/ui/widget/LoginBlocListener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: Expanded(
        child: Form(
          key: context.read<LoginCubit>().formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Expanded(
                  flex: 2,
                  child: Image.asset("assets/Screenshot 2025-07-10 021942.png"),
                ),
                Text("Let's login you in", style: TextStyles.font20WhiteMedium),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: "Email",
                        inputTextStyle: TextStyle(color: Colors.white),
                        controller: context.read<LoginCubit>().email,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter a valid email';
                          }
                        },
                      ),
                      SizedBox(height: 20.h),
                      AppTextFormField(
                        hintText: "Password",
                        controller: context.read<LoginCubit>().password,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter a valid password';
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Forget Password",
                        style: TextStyles.font13DarkBlueMedium,
                      ),
                      SizedBox(height: 20.h),
                  
                      BottonWidget(
                        onTap: () {
                          if (context
                              .read<LoginCubit>()
                              .formKey
                              .currentState!
                              .validate()) {
                            try {
                              context
                                  .read<LoginCubit>()
                                  .signInWithEmailAndPassword(
                                    email: context
                                        .read<LoginCubit>()
                                        .email
                                        .text,
                                    password: context
                                        .read<LoginCubit>()
                                        .password
                                        .text,
                                  );
                            } catch (e) {
                              Text("$e");
                            }
                          }
                        },
                        title: "Login ",
                        width: 345,
                      ),
                                      Loginbloclistener(),
                  
                    ],
                  ),
                ),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
