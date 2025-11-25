import 'package:flutter/material.dart';

class CirImageWidget extends StatelessWidget {
  final String photo;
  const CirImageWidget(  {super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return   CircleAvatar(
      backgroundImage: NetworkImage(
        photo
        // user[index].photo??
      ),
      radius: 16,
    );
  }
}
