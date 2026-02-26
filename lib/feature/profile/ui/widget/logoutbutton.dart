import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:fitness/feature/profile/controller/get_user_Info/get_user_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Logoutbutton extends StatelessWidget {
  const Logoutbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return BottonWidget(
      onTap: () {
        context.read<GetUserInfoCubit>().signOut();
        Navigator.pushReplacementNamed(context, Routes.loginScreen);
      },
      title: 'Logout',
      width: 325,
    );
  }
}
