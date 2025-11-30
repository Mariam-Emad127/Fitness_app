import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/core/helper/shared_pref_helper.dart';
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
  userID:FirebaseAuth.instance.currentUser!.uid, //SharedPrefHelper.getString("user"),//"rAEVRV1sgbTmC82lon9VTJmPQt63" ,//FirebaseAuth.instance.currentUser!.uid, //"rAEVRV1sgbTmC82lon9VTJmPQt63",//  
 //userName: "mmo",
  // userID:FirebaseAuth.instance.currentUser!.uid,//userid.toString(),//"rAEVRV1sgbTmC82lon9VTJmPQt63"  ,
   // userName:FirebaseAuth.instance.currentUser!.displayName??"",   
  plugins: [ZegoUIKitSignalingPlugin()], 
  callID: '1',
   
  config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
);
  }
}