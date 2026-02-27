 import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/widgets/image_widget.dart';
import 'package:fitness/feature/vediocall/ui/calling_vedio.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class ChattingAppbar extends StatelessWidget {
  final String name;
  final String id;
  final String photo;
    ChattingAppbar({super.key, required this.name, required this.id, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
         decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.mainYellow),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
          color: ColorsManager.mainYellow,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: ListTile(title: Text("chattng with $name", style: TextStyle(fontSize: 17)),
                leading:
                 CirImageWidget(photo:photo ,radious: 25,),
                 ),
              ),
             
 
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: IconButton(
                  onPressed: () {
                    ZegoUIKitPrebuiltCallInvitationService().send(
                      resourceID: "mmm",
                      invitees: [ZegoCallUser(id, name)],
                      isVideoCall: true,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CallingVedio()),
                    );
                  },
                  icon: Icon(Icons.video_call, size: 40),
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
