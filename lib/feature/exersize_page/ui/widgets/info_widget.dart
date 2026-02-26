import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final IconData icon; 
  const InfoWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      child: Container(
        
         decoration: BoxDecoration(color: ColorsManager.lightGray ,borderRadius: BorderRadius.circular(20),),
 
        child: Row(
       
          children: [ 
        Icon(icon,color: Colors.white,size: 15,),
      
        Text(title,style: TextStyles.font15WhiteMedium,
        
        ), 
        ],)
        
      
        ),
    );
  }
}