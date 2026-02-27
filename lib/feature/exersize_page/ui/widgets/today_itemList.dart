// ignore_for_file: file_names
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness/core/helper/exersize_image.dart';
  import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
  import 'package:fitness/feature/exersize_page/ui/widgets/progress_widget.dart';
import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayItemlist extends StatelessWidget {
  final int index;
  final String equipment;
  final String difficulty;
 
  const TodayItemlist({
    super.key,
    required this.index,
    required this.equipment,
    required this.difficulty,
 
  });

  @override
  Widget build(BuildContext context) {
    return
     
     Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        //height: 200.h,
        decoration: BoxDecoration(

            color: ColorsManager.darkBlue,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(60),
                child: CachedNetworkImage(
                  imageUrl: exerciseImages[index],
           
                  fit: BoxFit.fill,
                  height: 35.h,
                  width: 80.w,
                ),
              ),
            ),
            SizedBox(
              width: 7.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Text(
                    equipment,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyles.font16WhiteSemiBold,
                  ),
                ),
                Text(
                  difficulty,
                  style: TextStyles.font15WhiteMedium,
                ),
                ProgressWidget()
              ],
            )
          ],
        ),
      ),
         );
  }
}
