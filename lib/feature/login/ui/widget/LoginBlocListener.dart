// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/core/helper/shared_pref_helper.dart';
import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/login/controller/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

class Loginbloclistener extends StatelessWidget {
  const Loginbloclistener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSucess ||
          current is LoginFailure,

      listener: (context, state) async {
        if (state is LoginLoading) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(color: ColorsManager.mainBlue),
            ),
          );
        } else if (state is LoginSucess) {
          // Navigator.pushNamed(context,Routes.home);

          FirebaseAuth.instance.currentUser!.reload();
          String userID = await SharedPrefHelper.getString("user");

          ZegoUIKitPrebuiltCallInvitationService().init(
            appID: appID, // من Zego Console
            appSign: appSignin, // من Zego Console
            userID: userID, //irebaseAuth.instance.currentUser!.uid,
            userName: "mmo",
            config: ZegoCallInvitationConfig(),
            plugins: [ZegoUIKitSignalingPlugin()],
          );
          Navigator.pushNamed(context, Routes.frindScreen);

          //  Navigator.pop(context);
        } else if (state is LoginFailure) {
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
      },
      child: Container(),
    );
  }
}
