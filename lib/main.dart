import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/app.dart';
import 'package:fitness/core/di/dependency_injection.dart';
import 'package:fitness/core/routing/app_router.dart';
import 'package:fitness/core/widgets/string.dart';
import 'package:fitness/feature/chatting_page/data/message_database.dart';
import 'package:fitness/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    MessageDatabase messageDatabase=await MessageDatabase();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await setupGetIt();
 messageDatabase.initalDb();
 
  await Supabase.initialize(
    url: 'https://zsbjdsxlzxhtkqmjwwmm.supabase.co',
    anonKey: AppStrings.supabaseKey,
    authOptions: FlutterAuthClientOptions(detectSessionInUri: false),
  );
  
//await Notification_service().initFCM();
 
  //await checkIfLoggedInUser();

  runApp(MyApp(appRouter: AppRouter()));
}
/*
checkIfLoggedInUser() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? user = FirebaseAuth.instance.currentUser?.uid;
  prefs.setString("user", user ?? "");
  user = prefs.getString("user");

  if (user == "" || user == null) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
  
}
*/