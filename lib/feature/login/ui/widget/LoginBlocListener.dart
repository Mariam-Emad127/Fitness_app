import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/login/controller/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginbloclistener extends StatelessWidget {
  const Loginbloclistener({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSucess ||
          current is  LoginFailure,

      listener: (context, state) {
if(state is LoginLoading)  {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          }else if(state is LoginSucess){
            print( "dddddddddddddddd");
             Navigator.pop(context);
          }else{
             Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text( "error"),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 3),
              ),
            );
          }
    

      },
      child: Container(),
    );
  }
}