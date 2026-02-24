import 'package:fitness/core/helper/exersize_image.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
 import 'package:fitness/feature/exersize_page/controller/cubit/target_exersize/cubit/target_exersize_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/exersize_image.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/info_widget.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/shimmer_widget.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/start_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class WorkoutListView extends StatelessWidget {
  const WorkoutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TargetExersizeCubit, TargetExersizeState>(
      buildWhen: (previous, current) =>
          current is TargetListSucess || current is TargetListFailure,
      builder: (context, state) {
        return state.maybeWhen(
            targetListSucess: (exresizeModel) {
              return ListView.builder(
                    scrollDirection: Axis.horizontal,
                  itemCount: exresizeModel.length,
                  itemBuilder: (context, index) {
                   
                    return AspectRatio(
                      aspectRatio: 6/8,
                      child: Stack(
                        children: [
                          ExersizeImage(path: bodyPartsImages[index]),
                          Positioned(
                              top: 20.h,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          exresizeModel[index],
                                          style: TextStyles.font18WhiteMedium,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      Text(
                                         "Training ",
                                        style: TextStyles.font16WhiteSemiBold,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      InfoWidget(
                                        title: " 500 Kacl",
                                        icon: Icons.lock_clock,
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      InfoWidget(
                                        title: "  50 min",
                                        icon: Icons.lock_clock_sharp,
                                      ),
                                    ],
                                  ),
                                  StartIcon()
                                ],
                              ))
                        ],
                      ),
                    );
                 
                  }
                  );

                  
            },
                      targetListFailure: (message) {
            return Text(message);
          },
          targetListLoading: () => ShimmerWidget(),
            orElse:
                () => SizedBox(
                        width: 200.0,
                        height: 100.0,
                        child: ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Shimmer.fromColors(
                                baseColor: ColorsManager.lightGray,
                                highlightColor: Colors.white,
                                child: SizedBox(
                                  height: 200,
                                ),
                              );
                            }))
                            );
    
      },
    );
  }
}
