import 'package:flutter/material.dart';

class CirImageWidget extends StatelessWidget {
  final String photo;
  final double radious;
  const CirImageWidget(  {super.key, required this.photo, required this.radious});

  @override
  Widget build(BuildContext context) {
    return   CircleAvatar(
      
      backgroundImage: NetworkImage(
        photo
        
        // user[index].photo??
      ),
      radius: radious,
    );
  }
}
