import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
 import 'package:fitness/feature/profile/ui/widget/appBar_widget.dart';
import 'package:fitness/feature/profile/ui/widget/info.dart';
import 'package:fitness/feature/profile/ui/widget/setting_wedgit.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [AppbarWidget(),
 SizedBox(height: 15,),
CircleAvatar(
  radius: 40,
  backgroundColor: ColorsManager.mainYellow,
  child: Padding(
    padding: const EdgeInsets.all(2), // Border radius
    child: ClipOval(child:
     Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/813px-Unknown_person.jpg")),
  ),
),
SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Info(iconData: Icons.line_weight,  number: '55',  info: 'Weight' , measurement: 'kg',),
Info(iconData: Icons.height,  number: '5.7',  info: 'Height' , measurement: 'Fit',),
Info(iconData: Icons.photo_size_select_actual_rounded,  number: '22',  info: 'age    ' , measurement: 'years',)


],),
    SizedBox(height: 10,),
    SettingWedgit(title: 'Edit Profile', iconData: Icons.person,),
    SizedBox(height: 10,),
 Container(
       
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color: ColorsManager.lightGray,),
      
      child: ListTile(
        leading: Icon(Icons.notification_add,size: 25,color: ColorsManager.mainYellow,),
        title:Text( "Notification",style: TextStyles.font16WhiteMedium,),
        trailing:Switch(value:  true, onChanged:(value){!value;},activeColor: ColorsManager.mainYellow,)
      
      ) ,
        ),
    //  ),
    
    
     SizedBox(height: 5,),
    SettingWedgit(title: 'Setting', iconData: Icons.settings,),
    
          
          ],
        )),
      )),
    );
  }
}
