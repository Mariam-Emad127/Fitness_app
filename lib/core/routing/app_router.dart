import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/feature/login/controller/cubit/login_cubit.dart';
import 'package:fitness/feature/login/ui/login.dart';
import 'package:fitness/feature/login/ui/login_with_email.dart';
import 'package:fitness/feature/profile/controller/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:fitness/feature/profile/controller/get_user_Info/get_user_info_cubit.dart';
import 'package:fitness/feature/profile/ui/edit_profile.dart';
import 'package:fitness/feature/profile/ui/user_profile.dart';
import 'package:fitness/feature/sign_up/controller/cubit/sign_up_cubit.dart';
import 'package:fitness/feature/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings setting) {
    // Route? onGenerateRoute(RouteSettings settings) {
    // final arrgument = setting.arguments;

    switch (setting.name) {
      case Routes.signupScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SignUpCubit(),
                  child: SignupScreen(),
                ));

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: Login(),
                ));

      case Routes.loginWithEmailScreen:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider<LoginCubit>(
            create: (context) => LoginCubit(),
            child: LoginWithEmail(),
          );
        });

      case Routes.userProfile:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value:   GetUserInfoCubit()..getUserData(),
                  child: UserProfile(),
                ));

      case Routes.edieProfile:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => EditProfileCubit(),
                    ),
                    BlocProvider.value (
                      value:  GetUserInfoCubit()..getUserData(),
                    ),
                  ],
                  child: EditProfile(),
                ));
      default:
        return null;
    }
  }
}
