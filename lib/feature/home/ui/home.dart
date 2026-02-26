 /*
 import 'package:fitness/core/routing/routes.dart';
 import 'package:fitness/feature/home/ui/widget/home_animation_manager.dart';
 import 'package:flutter/material.dart';
 import 'package:google_nav_bar/google_nav_bar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
   //final _navController = HomeNavigationController();
  late final HomeAnimationManager _animationManager;
int _selectedIndex = 0;

  // القوائم أو الصفحات اللي هتظهر عند التنقل
 /*
  static const List<Widget> _pages = [
   //ExersizeHome(),
    //Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Exercises', style: TextStyle(fontSize: 24))),
    Center(child: Text('Search', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 24))),
  ];
 */
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
      backgroundColor: Colors.black,
     // body: _pages[_selectedIndex], // الصفحة اللي بتتعرض حالياً
      
      // هنا الـ Animated Navigation Bar
      bottomNavigationBar: 
      Padding(
        padding: const EdgeInsets.only(bottom: 12,right: 5,left: 5),
        child: Container(
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!, // تأثير الموجة عند الضغط
                hoverColor: Colors.grey[100]!, 
                gap: 5, // المسافة بين الأيقونة والنص
                activeColor: Colors.deepPurple, // لون الأيقونة المختارة
                iconSize: 24,
               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400), // سرعة الأنيميشن
                tabBackgroundColor: Colors.deepPurple.withOpacity(0.1), // لون خلفية الزر المختار
                color: Colors.black, // لون الأيقونات غير المختارة
                tabs: const [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(icon: Icons.fitness_center, text: 'Exercises'),
                  GButton(icon: Icons.search, text: 'Search'),
                  GButton(icon: Icons.person, text: 'Profile'),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  switch(_selectedIndex){
                 case 0:
                 Navigator.pushNamed(context, Routes.exersizeHome);



                  }
                 
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
   
   
    );
 
    /*
    Scaffold(
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
       // onTap: (index) => setState(() => _navController.navigate(context, index)),
        hideAnimationController: _animationManager.hideBottomBarController,
        shadow: const BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
        ),
      ),
    );
  */
  }
}
*/