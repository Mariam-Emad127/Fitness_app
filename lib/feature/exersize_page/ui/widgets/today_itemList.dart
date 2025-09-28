// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness/core/di/dependency_injection.dart';
import 'package:fitness/core/helper/exersize_image.dart';
import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/exersize_details/ui/exersize_detail.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayItemlist extends StatelessWidget {
  final int index;
  final String equipment;
  final String difficulty;
  //final String id;
  const TodayItemlist(
      {super.key,
      required this.index,
      required this.equipment,
      required this.difficulty,
      //required this.id
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: () {
    Navigator.pushNamed(context, Routes.exersizeDetail);   
  //context.read<ExersizesCubit>()..getImage( "",  "");
      //  print(id);
      },
      
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
              color: ColorsManager.darkBlue,
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: CachedNetworkImage(
                    imageUrl: exerciseImages[index],
                    //Image.asset(
                    //"assets/Screenshot 2025-07-10 021942.png",
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

                      // "Today Plan",
                      style: TextStyles.font16WhiteSemiBold,
                    ),
                  ),
                  Text(
                    difficulty,
                    // exersizeModel[index].difficulty??"",
                    // "100 push",
                    style: TextStyles.font15WhiteMedium,
                  ),
                  ProgressWidget()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
