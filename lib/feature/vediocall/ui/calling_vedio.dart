import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/core/helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

class CallingVedio extends StatefulWidget {
  const CallingVedio({super.key});

  @override
  State<CallingVedio> createState() => _CallingVedioState();
}

class _CallingVedioState extends State<CallingVedio> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall (
  appID: appID,
  appSign: appSignin,
  userID: FirebaseAuth.instance.currentUser!.uid,   
  userName: "name",
  plugins: [ZegoUIKitSignalingPlugin()], 
  callID: 'memo_call',
   
  config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
);
  }
}