import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';

class SettingWedgit extends StatelessWidget {
  final String title;
  final IconData iconData;
  const SettingWedgit({super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
       
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color: ColorsManager.lightGray,),
      
      child: ListTile(
        leading: Icon(iconData,size: 25,color: ColorsManager.mainYellow,),
        title:Text(title,style: TextStyles.font16WhiteMedium,),
        trailing:Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color: ColorsManager.moreLighterGray,),
      child: Icon(Icons.arrow_back_ios_new,
      size: 20,
      //color: ColorsManager.mainYellow,
      )
      
      ) ,
        ),
      ),
    
    
    );
  }
}