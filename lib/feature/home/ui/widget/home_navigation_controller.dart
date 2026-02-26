
/*import 'package:fitness/core/di/dependency_injection.dart';
import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/target_exersize/cubit/target_exersize_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/exersize_home.dart';
import 'package:fitness/feature/profile/controller/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:fitness/feature/profile/ui/edit_profile.dart';
import 'package:fitness/feature/profile/ui/user_profile.dart';
import 'package:fitness/feature/vediocall/ui/vediocall_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeNavigationController {
  int currentIndex = 0;

  final iconList = <IconData>[
    Icons.home,
   // Icons.videocam,
    Icons.chat,
  ];

  Widget get currentPage {
    switch (currentIndex) {
      case 0:
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  getIt<ExersizesCubit>()..getAllExersizes(),
            ),
            BlocProvider(
              create: (context) =>
                  getIt<TargetExersizeCubit>()..getTargetList(),
            ),
          ],
          child: const ExersizeHome(),
        );
      case 1:
        return const VediocallScreen();
      case 2:
        return BlocProvider(
          create: (context) => EditProfileCubit(),
          child: const UserProfile(),
        );
      default:
        return const ExersizeHome();
    }
  }
/*
  void navigate(BuildContext context, int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        Navigator.pushNamed(context, Routes.exersizeHome);
        break;
      case 1:
        Navigator.pushNamed(context, Routes.frindScreen);
        break;
      case 2:
        Navigator.pushNamed(context, Routes.userProfile);
        break;
    }
  */
 // }

}
*/