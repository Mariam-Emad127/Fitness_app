import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/app_text_form_field.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:fitness/feature/sign_up/controller/cubit/sign_up_cubit.dart';
import 'package:fitness/feature/ui/wedgit/remmeberme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: context.read<SignUpCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Create an Account ",
                  style: TextStyles.font22WhiteMedium,
                ),
                Text(
                  "Create an Account to set a .tracck your progress goal \n       and stay motavated every step on way.",
                  style: TextStyles.font12GrayRegular,
                ),
                SizedBox(
                  height: 40.h,
                ),
                AppTextFormField(
                    controller: context.read<SignUpCubit>().username,
                    hintText: "Name",
                    validator: (val) {}),
                SizedBox(
                  height: 20.h,
                ),
                AppTextFormField(
                    controller: context.read<SignUpCubit>().email,
                    hintText: "Email",
                    validator: (val) {}),
                SizedBox(
                  height: 20.h,
                ),
                AppTextFormField(
                    controller: context.read<SignUpCubit>().password,
                    hintText: "Password",
                    validator: (val) {}),
                SizedBox(
                  height: 20.h,
                ),
                AppTextFormField(
                    hintText: "comfirm password", validator: (val) {}),
                SizedBox(
                  height: 20.h,
                ),
                Remmeberme(),
                BottonWidget(
                  onTap: () {
                    if (context
                        .read<SignUpCubit>()
                        .formKey
                        .currentState!
                        .validate()) {
                      context
                          .read<SignUpCubit>()
                          .createUserWithEmailAndPassword(
                              email: context.read<SignUpCubit>().email.text,
                              password:
                                  context.read<SignUpCubit>().password.text,
                              username:   context.read<SignUpCubit>().username.text);
                    }
                    ;
                  },
                  title: "Create an Account ",
                ),
                /*
                BlocListener(
                    listenWhen: (previous, current) =>
                        current is SignUpLoading ||
                        current is SignUpFailuier ||
                        current is SignUpSucees,
                    listener: (context, state) {
                      if (state is SignUpLoading) {
                        showDialog(
                          context: context,
                          builder: (context) => const Center(
                            child: CircularProgressIndicator(
                              color: ColorsManager.mainBlue,
                            ),
                          ),
                        );
                      } else if (state is SignUpSucees) {
                        print("dddddddddddddddd");
                      } else {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("error"),
                            backgroundColor: Colors.red,
                            duration: const Duration(seconds: 3),
                          ),
                        );
                      }
                    })
             
             */
              ],
            ),
          ),
        ),
      )),
    );
  }
}
