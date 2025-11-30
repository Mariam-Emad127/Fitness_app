 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/feature/vediocall/ui/calling_vedio.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';
 
class VediocallScreen extends StatefulWidget {
   const VediocallScreen({super.key});

  @override
  State<VediocallScreen> createState() => _VediocallScreenState();


}

class _VediocallScreenState extends State<VediocallScreen> {
  @override
  void initState() {
   
  ZegoUIKitPrebuiltCallInvitationService().init(
    appID: appID, // من Zego Console
    appSign: appSignin, // من Zego Console
    userID: FirebaseAuth.instance.currentUser!.uid, // ID المستخدم الحالي (لازم يكون Unique)
    userName:FirebaseAuth.instance.currentUser!.displayName??"",  //"mmo",
    config: ZegoCallInvitationConfig(),
    plugins: [ZegoUIKitSignalingPlugin()],
  
  );
 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
appBar: AppBar(title: Text( "fffff"),),
      body: Column(children: [
        
         ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
              
                ZegoUIKitPrebuiltCallInvitationService().send(
                  resourceID: "mmm",
                  invitees: [ZegoCallUser("UiSPIgA2TKaZSecjnbd2Pb5d2Xp2",  "memo")],
                  isVideoCall: true,
                );
                Navigator.push(context, MaterialPageRoute(builder:  (context)=>CallingVedio()));
              },
              child: const Text("Call",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
 
 
 
      ],),
    );
  }
}

 /*
 ZegoUIKitPrebuiltCall(
      appID: appID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: appSignin, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: FirebaseAuth.instance.currentUser!.uid,
      userName: 'user_name',
      callID: "1",
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    )
   
   */
   
   
   
   
   
   
   
   
   /*
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
*/