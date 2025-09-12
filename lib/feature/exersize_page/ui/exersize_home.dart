import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/custom_search_exersize.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/progress_widget.dart';
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
      body: SafeArea(
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
                    onChanged: (String) {},
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
                  SizedBox(
                      height: 210.h,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (contex, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                // padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: ColorsManager.darkBlue,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          12), // Image border
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(40),
                                        child: Image.asset(
                                          // "assets/1140-leg-lift-exercise-move.jpg",
                                          "assets/Screenshot 2025-07-10 021942.png",
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Today Plan",
                                          style: TextStyles.font18WhiteMedium,
                                        ),
                                        Text(
                                          "100 push",
                                          style: TextStyles.font15WhiteMedium,
                                        ),
                                        ProgressWidget()
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
