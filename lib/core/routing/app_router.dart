 import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/feature/login/ui/login.dart';
import 'package:fitness/feature/login/ui/login_with_email.dart';
import 'package:flutter/material.dart';

class AppRouter {
 Route? onGenerateRoute (RouteSettings setting){
//    Route? onGenerateRoute(RouteSettings settings) {
  final arrgument=setting.arguments;

  switch (setting.name){
case Routes.loginScreen:
return MaterialPageRoute(builder: (_) =>Login());


case Routes.loginWithEmailScreen:
return MaterialPageRoute(builder: (BuildContext context) { return LoginWithEmail(); });
      default:
        return null;
   } 
}
}