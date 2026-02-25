import 'package:flutter/material.dart';

class TextRespiratory {

static double getResponsiveFontSize(BuildContext context, double baseSize) {
  double screenWidth = MediaQuery.of(context).size.width;
   return baseSize * (screenWidth / 400);
}

}