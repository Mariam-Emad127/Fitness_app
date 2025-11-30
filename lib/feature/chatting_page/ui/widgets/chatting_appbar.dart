import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/widgets/image_widget.dart';
import 'package:fitness/feature/vediocall/ui/calling_vedio.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class ChattingAppbar extends StatelessWidget {
  final String name;
    final String id;
   const ChattingAppbar({super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return            Expanded(
              flex: 1,
              child: Container(
                // height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.mainYellow),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(12),
                  ),
                  color: ColorsManager.mainYellow,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "chattng with $name",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(width: 5),
                      CirImageWidget(photo: unknownImage),
                      SizedBox(width: 100),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: IconButton(
                          onPressed: () { ZegoUIKitPrebuiltCallInvitationService().send(
                  resourceID: "mmm",
                  invitees: [ZegoCallUser(id,name)],
                  // "UiSPIgA2TKaZSecjnbd2Pb5d2Xp2",   "memo"
                  isVideoCall: true,
                );
                Navigator.push(context, MaterialPageRoute(builder:  (context)=>CallingVedio()));
                },
                          icon: Icon(Icons.video_call, size: 30),
                          color: Colors.white,
                        ),
                    
                    
                      ),
                    ],
                  ),
                ),
              ),
            );

     
  }
}