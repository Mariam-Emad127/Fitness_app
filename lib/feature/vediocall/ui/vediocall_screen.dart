import 'package:fitness/core/helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
//import 'package:zego_uiki/zego_uiki.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';
class VediocallScreen extends StatefulWidget {
  const VediocallScreen({super.key});

  @override
  State<VediocallScreen> createState() => _VediocallScreenState();
}

class _VediocallScreenState extends State<VediocallScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      body: Column(children: [
 /*
 ZegoUIKitPrebuiltCall(
      appID: appID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: appSignin, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: 'user_id',
      userName: 'user_name',
      callID: "callID",
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    )
   */  
     ZegoSendCallInvitationButton(
   isVideoCall: true,
   //You need to use the resourceID that you created in the subsequent steps. 
   //Please continue reading this document.
   resourceID: "mmm",
   invitees: [
      ZegoUIKitUser(
         id: "targetUserID",
         name: "targetUserName",
    
      ),
      
   ],
)
      ],),
    );
  }
}