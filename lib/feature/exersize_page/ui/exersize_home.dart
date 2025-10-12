import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/custom_search_exersize.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/todat_list.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/workout_list_view.dart';
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Home",
                style: TextStyles.font13GrayRegular,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyles.font18WhiteMedium,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomSearchTextField(
                      onChanged: (s) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Popular Workouts ",
                      style: TextStyles.font18WhiteMedium,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(height: 200.h, child: WorkoutListView()),
                    Text(
                      "Today Plan",
                      style: TextStyles.font18WhiteMedium,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                 TodayList()
            
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
