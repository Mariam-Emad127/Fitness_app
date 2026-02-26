import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottonnav extends StatefulWidget {
  const Bottonnav({super.key});

  @override
  State<Bottonnav> createState() => _BottonnavState();
}

class _BottonnavState extends State<Bottonnav> {
int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return      Padding(
        padding: const EdgeInsets.only(right: 10,left: 10),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10,),
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.mainYellow),
             borderRadius: BorderRadius.circular(25),
            color: Colors.black,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
            ],
          ),
          child: SafeArea(
            child: GNav(
                rippleColor: Colors.grey[300]!, // تأثير الموجة عند الضغط
                hoverColor: Colors.grey[100]!, 
                gap: 5, // المسافة بين الأيقونة والنص
                activeColor:  ColorsManager.mainYellow, // لون الأيقونة المختارة
                iconSize: 30,//24,
               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400), // سرعة الأنيميشن
                tabBackgroundColor:// ColorsManager.mainYellow, 
                Colors.deepPurple.withOpacity(0.1), // لون خلفية الزر المختار
                color: Colors.black, // لون الأيقونات غير المختارة
                tabs: const [
                  GButton(icon: Icons.home, text: 'Home' ,iconColor: Colors.white,),
                  GButton(icon: Icons.fitness_center, text: 'Exercises',iconColor: Colors.white,),
                  GButton(icon: Icons.search, text: 'Search',iconColor: Colors.white,),
                  GButton(icon: Icons.person, text: 'Profile',iconColor: Colors.white,),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  switch(index){
                 case 0:
                 Navigator.pushNamed(context, Routes.exersizeHome);

                 case 1:
                 Navigator.pushNamed(context, Routes.userProfile);
                  case 2:
                 Navigator.pushNamed(context, Routes.frindScreen);


                  }
                 
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
       // ),
      );
   
   
  }
}