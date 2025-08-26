import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/app.dart';
import 'package:fitness/core/routing/app_router.dart';
import 'package:fitness/core/widgets/string.dart';
import 'package:fitness/firebase_options.dart';
import 'package:flutter/material.dart';
 import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  await Supabase.initialize(
      url: 'https://zsbjdsxlzxhtkqmjwwmm.supabase.co',
      anonKey: AppStrings.supabaseKey);

 

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
/*
checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
*/