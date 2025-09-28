

// ignore_for_file: library_private_types_in_public_api

import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  final IconData iconData;

  const NavigationScreen(this.iconData, {super.key});

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void didUpdateWidget(NavigationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.iconData != widget.iconData) {
      _startAnimation();
    }
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
    super.initState();
  }

  _startAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
     super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     return ListView(
     children: [
       SizedBox(height: 64),
       Center(
         child: CircularRevealAnimation(
           animation: animation,
           centerOffset: Offset(80, 80),
           maxRadius: MediaQuery.of(context).size.longestSide * 1.1,
           child: Icon(
             widget.iconData,
             color:ColorsManager.mainYellow,  
             size: 160,
           ),
         ),
       ),
     ],
          );
  }
}
