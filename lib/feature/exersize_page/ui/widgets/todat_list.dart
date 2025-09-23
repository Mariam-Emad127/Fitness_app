import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness/core/helper/exersize_image.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class TodayList extends StatelessWidget {
  const TodayList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExersizesCubit, ExersizesState>(
      
      builder: (context, state) {
     return state.maybeWhen(exersizeSucess:(exersizeModel){

  return SizedBox(
            height: 230.h,
            child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: exersizeModel.length,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(

                      decoration: BoxDecoration(
                          color: ColorsManager.darkBlue,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(12), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(40),
                              child:CachedNetworkImage(imageUrl: exerciseImages[index],
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
                                  exersizeModel[index].equipment??"",
                                  overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                     
                                 // "Today Plan",
                                  style: TextStyles.font16WhiteSemiBold,
                                ),
                              ),
                              Text(
                                exersizeModel[index].difficulty??"",
                               // "100 push",
                                style: TextStyles.font15WhiteMedium,
                              ),
                              ProgressWidget()
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                })
                
                );
      
      } ,orElse: ()=>
      SizedBox(
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
     
      }      
    
    );
  }
}
