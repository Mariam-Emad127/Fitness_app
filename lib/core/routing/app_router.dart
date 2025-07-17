import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/feature/login/controller/cubit/login_cubit.dart';
import 'package:fitness/feature/login/ui/login.dart';
import 'package:fitness/feature/login/ui/login_with_email.dart';
import 'package:fitness/feature/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings setting) {
//    Route? onGenerateRoute(RouteSettings settings) {
    //final arrgument=setting.arguments;

    switch (setting.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => Login());

      case Routes.loginWithEmailScreen:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider<LoginCubit>(
            create: (context) => LoginCubit(),
            child: LoginWithEmail(),
          );
        });

      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) {
          return SignupScreen();
        });
      default:
        return null;
    }
  }
}
