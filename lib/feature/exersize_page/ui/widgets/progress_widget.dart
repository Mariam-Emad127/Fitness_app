import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({super.key});

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
      int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                               // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                width: 50,
                   child:LinearProgressBar (
                     maxSteps: 9,
                     borderRadius:BorderRadius.circular(25) ,
                     progressType: LinearProgressBar.progressTypeLinear,
                     currentStep: currentStep,
                     progressColor: ColorsManager.mainYellow,
                     backgroundColor: ColorsManager.lightGray,
                     dotsAxis: Axis.horizontal, // OR Axis.vertical
                     dotsActiveSize: 10,
                     dotsInactiveSize: 10,
                     dotsSpacing: const EdgeInsets.only(right: 10), // also can use any EdgeInsets.
                     valueColor: const AlwaysStoppedAnimation<Color>(ColorsManager.mainYellow),
                     semanticsLabel: "Label",
                     semanticsValue: "Value",
                     minHeight: 10,
                   ),
                 );
  }
}