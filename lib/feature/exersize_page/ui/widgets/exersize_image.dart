import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          size: Size.fromRadius(100.r),  
          child: CachedNetworkImage(
           imageUrl:  path,
         //  "assets/Screenshot 2025-07-10 021942.png",
           // "assets/7fc0e9da-f182-4d2c-a9ec-b6e494c78883.png",
            fit: BoxFit.cover,
            height: 200.h,
            width: 90.w,
          ),
        ),
      ),
    );
  }
}
