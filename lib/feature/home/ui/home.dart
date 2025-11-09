import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/home/ui/widget/floating_widget.dart';
import 'package:fitness/feature/home/ui/widget/home_animation_manager.dart';
import 'package:fitness/feature/home/ui/widget/home_navigation_controller.dart';
import 'package:flutter/material.dart';
 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _autoSizeGroup = AutoSizeGroup();
  final _navController = HomeNavigationController();
  late final HomeAnimationManager _animationManager;

  @override
  void initState() {
    super.initState();
    _animationManager = HomeAnimationManager(this);
  }

  @override
  void dispose() {
    _animationManager.dispose();
    super.dispose();
  }

  bool _onScrollNotification(ScrollNotification notification) {
    return _animationManager.handleScroll(notification);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      extendBody: true,
      body: NotificationListener<ScrollNotification>(
        onNotification: _onScrollNotification,
        child: _navController.currentPage,
      ),
      floatingActionButton:   FloatingWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: _navController.iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color =
              isActive ? Colors.amberAccent : ColorsManager.lightBlue;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(_navController.iconList[index], size: 24, color: color),
              const SizedBox(height: 10),
              AutoSizeText(
                "Tab $index",
                maxLines: 1,
                style: TextStyle(color: color),
                group: _autoSizeGroup,
              ),
            ],
          );
        },
        backgroundColor: ColorsManager.darkBlue,
        activeIndex: _navController.currentIndex,
        splashColor: Colors.indigo,
        notchAndCornersAnimation: _animationManager.borderRadiusAnimation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 15,
        rightCornerRadius: 15,
        onTap: (index) => setState(() => _navController.navigate(context, index)),
        hideAnimationController: _animationManager.hideBottomBarController,
        shadow: const BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
        ),
      ),
    );
  }
}
