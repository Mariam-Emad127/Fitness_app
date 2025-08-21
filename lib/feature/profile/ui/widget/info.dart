import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
final IconData iconData;
final String number;
final String info;
final String measurement;
  const Info({super.key, required this.iconData, required this.number, required this.info, required this.measurement});

  @override
  Widget build(BuildContext context) {
    return 
  Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(8),
height: 80,
width: 95,
    decoration: BoxDecoration(
          color: ColorsManager.lightGray,
      borderRadius: BorderRadius.circular(12)),
    child: Column(children: [
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
    Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: ColorsManager.lightBlue,
      
    ),
    child: Icon(iconData,size: 17,),
    ),
     Text( info,style: TextStyles.font16WhiteMedium,)
    ],),
    Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [//Text( number,style: TextStyles.font20WhiteMedium,),
    Text(measurement ,style: TextStyles.font15WhiteMedium,),
    ],)
    ],),
  )

;
  }
}