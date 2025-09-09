import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/custom_search_exersize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExersizeHome extends StatefulWidget {
  const ExersizeHome({super.key});

  @override
  State<ExersizeHome> createState() => _ExersizeHomeState();
}

class _ExersizeHomeState extends State<ExersizeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                  SizedBox(
                    height:200.h ,
                    child: ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.asset(
                                  "assets/1140-leg-lift-exercise-move.jpg",
                                   // "assets/Screenshot 2025-07-10 021942.png",
                                    height: 200,
                                    width: 200),
                              )
                    
                              //Image.asset("assets/download (2).png")
                            ],
                          );
                        }),
                  )

                  //
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
