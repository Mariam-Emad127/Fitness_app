 import 'package:flutter/material.dart';
 
class ExersizeImage extends StatelessWidget {
  final String path;
  final Widget widget;
  const ExersizeImage(   {super.key, required this.path, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
       // border: Border.all(color: ColorsManager.mainYellow),
        image: DecorationImage(image: NetworkImage(  path, ),
        fit: BoxFit.cover
        ) ),
        child:widget ,
        
        )
      
   
    );
  }
}
