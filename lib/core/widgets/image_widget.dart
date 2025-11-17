import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String photo;
  const ImageWidget({super.key, required this.photo});

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
