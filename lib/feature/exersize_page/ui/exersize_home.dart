import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/custom_search_exersize.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/todat_list.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/workout_list_view.dart';
import 'package:fitness/feature/home/ui/widget/bottonnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExersizeHome extends StatefulWidget {
  const ExersizeHome({super.key});

  @override
  State<ExersizeHome> createState() => _ExersizeHomeState();
}

class _ExersizeHomeState extends State<ExersizeHome> {
  int currentStep = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body:SafeArea(
        child: CustomScrollView(slivers: [
         
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyles.font18WhiteMedium,
                    ),
                    SizedBox(height: 10.h),
                    CustomSearchTextField(onChanged: (s) {}),
                    SizedBox(height: 10.h),
                    Text(
                      "Popular Workouts",
                      style: TextStyles.font18WhiteMedium,
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),

SliverToBoxAdapter(

child: Padding(
  padding: const EdgeInsets.only(left: 15.0,right:15 ),
  child: SizedBox(
    height: 0.25.sh,
    child: WorkoutListView()),
),

),
// 4. عنوان Today Plan
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Today Plan",
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
            ),
 
             SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: const TodayList(), // الودجت بتاعتك
              ),
            ),
            
 
        ],),
      ) ,
      
   bottomNavigationBar: Bottonnav(), 
    );
  }
}
