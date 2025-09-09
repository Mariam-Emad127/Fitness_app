import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final IconData icon; 
  const InfoWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
       alignment: Alignment.center,
      decoration: BoxDecoration(color: ColorsManager.lightGray ,borderRadius: BorderRadius.circular(20),),
       width: 100,
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
      Icon(icon,color: Colors.white,size: 15,),

      Text(title,style: TextStyles.font15WhiteMedium,), 
      ],)
      
    
      );
  }
}