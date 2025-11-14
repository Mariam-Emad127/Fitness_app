import 'package:fitness/core/di/dependency_injection.dart';
import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/get_image/cubit/get_image_cubit.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/target_exersize/cubit/target_exersize_cubit.dart';
import 'package:fitness/feature/exersize_page/exersize_details/ui/exersize_detail.dart';
import 'package:fitness/feature/exersize_page/ui/exersize_home.dart';
import 'package:fitness/feature/frind_screen/controller/cubit/get_frinds_cubit.dart';
import 'package:fitness/feature/frind_screen/ui/frind_screen.dart';
import 'package:fitness/feature/home/ui/home.dart';
import 'package:fitness/feature/login/controller/cubit/login_cubit.dart';
import 'package:fitness/feature/login/ui/login.dart';
import 'package:fitness/feature/login/ui/login_with_email.dart';
import 'package:fitness/feature/profile/controller/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:fitness/feature/profile/controller/get_user_Info/get_user_info_cubit.dart';
import 'package:fitness/feature/profile/ui/edit_profile.dart';
import 'package:fitness/feature/profile/ui/user_profile.dart';
import 'package:fitness/feature/sign_up/controller/cubit/sign_up_cubit.dart';
import 'package:fitness/feature/test_try/test.dart';
import 'package:fitness/feature/ui/signup_screen.dart';
import 'package:fitness/feature/vediocall/ui/vediocall_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings setting) {
    // Route? onGenerateRoute(RouteSettings settings) {
    switch (setting.name) {
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignUpCubit(),
            child: SignupScreen(),
          ),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(create: (context) => LoginCubit(), child: Login()),
        );

      case Routes.loginWithEmailScreen:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider<LoginCubit>(
              create: (context) => LoginCubit(),
              child: LoginWithEmail(),
            );
          },
        );

      case Routes.userProfile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: GetUserInfoCubit()..getUserData(),
            child: UserProfile(),
          ),
        );

      case Routes.edieProfile:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => EditProfileCubit()),
              BlocProvider.value(value: GetUserInfoCubit()..getUserData()),
            ],
            child: EditProfile(),
          ),
        );

      ///home
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => GetUserInfoCubit()..getUserData(),
              ),
              BlocProvider(create: (context) => EditProfileCubit()),
            ],
            child: HomeScreen(),
          ),
        );

      case Routes.exersizeHome:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<ExersizesCubit>()..getAllExersizes(),

                // ..getTargetList(),
              ),
              BlocProvider(create: (context) => getIt<TargetExersizeCubit>()..getTargetList()),
            ],
            child: ExersizeHome(),
          ),
        );
      case Routes.exersizeDetail:
        final args = setting.arguments as String; // هنا تاخد الـ id

        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    getIt<ExersizesCubit>()..getexersizeDetail(args),
              ),
              BlocProvider(
                create: (context) =>
                    getIt<GetImageCubit>()..getImage(args, "180"),
              ),
            ],
            child: ExersizeDetail(id: args),
          ),
        );
      case Routes.test:
        return MaterialPageRoute(builder: (_) => Count());
      case Routes.vediocallScreen:
        return MaterialPageRoute(builder: (_) => VediocallScreen());
case Routes.frindScreen:
return MaterialPageRoute(builder: (_)=>BlocProvider(
  create: (context) =>GetFrindsCubit()..getFrind(),
  child: FrindScreen(),
));

    }
    return null;
  }
}
