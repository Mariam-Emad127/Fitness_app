import 'package:flutter/material.dart';

class ExersizeImage extends StatelessWidget {
  final String path;
  const ExersizeImage(   {super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12), // Image border
        child: SizedBox.fromSize(
          size: Size.fromRadius(100),  
          child: Image.network(
            path,
         //  "assets/Screenshot 2025-07-10 021942.png",
           // "assets/7fc0e9da-f182-4d2c-a9ec-b6e494c78883.png",
            fit: BoxFit.fill,
            height: 200,
            width: 90,
          ),
        ),
      ),
    );
  }
}
