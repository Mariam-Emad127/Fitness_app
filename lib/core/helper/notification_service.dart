import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitness/core/helper/shared_pref_helper.dart';

 class Notification_service{
final firebaseMessage=FirebaseMessaging.instance;
 
 initFCM()async{
  await firebaseMessage.requestPermission();
try{
  String? fcmToken=await firebaseMessage.getToken() ??"";
  SharedPrefHelper.setData("fcm",fcmToken);
     print( "fcm       $fcmToken");
 } catch (e) {
    print("FCM Error: $e");
  }
   FirebaseMessaging.onMessage.listen((message) {
  print("messagev${message.notification?.title??"kkkkkkkkkkkkkk"}");
    //showNotification(message);
  });
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){ 
     print("messagev${message.notification!.title}");
});
 /*
  final initialMessage = await _messaging.getInitialMessage();
  if (initialMessage != null) {
    _handleBackgroundMessage(initialMessage);
  }
*/
 
  FirebaseMessaging.onBackgroundMessage(m);

 }
 
}
    
  Future<void>m(RemoteMessage message)async{ 
        await Firebase.initializeApp();
     print("messagev${message.notification?.title??"kkkkkkkk"}");
 
 }

 //fj2SesQIQsum3lVVRoO0Xj:APA91bHBUT6MjAuPT0-ppbKvsY-GBiXUjxetIVweG7_B9Ogs-XEHm2y7_eG81DC_7GOXllErDabglrwEAqDQy1wCeGLs6TzELcynP4Gn_GilKXLhrA72GAg