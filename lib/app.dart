import 'package:fitness/core/routing/app_router.dart';
import 'package:fitness/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyApp extends StatelessWidget {
  final AppRouter appRouter;
   const MyApp({super.key, required this.appRouter});

   @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => 
         //child: 
          MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //useMaterial3: true,
                  ),
                  initialRoute:Routes.exersizeHome, 
                  //vediocallScreen ,//isLoggedInUser==true? Routes.exersizeHome:Routes.loginScreen,
                  onGenerateRoute: appRouter.onGenerateRoute,
                ));
        
      /*
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
    return Center(child: CircularProgressIndicator()); // شاشة تحميل
  }
            if(snapshot.hasData){   
              return MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
                  ),
                  initialRoute: Routes.userProfile,
                  onGenerateRoute: appRouter.onGenerateRoute,
                );
        
        }
         else{  
           return MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
                  ),
                  initialRoute: Routes.loginScreen,
                  onGenerateRoute: appRouter.onGenerateRoute,
                );
        
        }
        
          }
        ));
  */
  }
}

 