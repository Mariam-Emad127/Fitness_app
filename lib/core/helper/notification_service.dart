import 'package:firebase_messaging/firebase_messaging.dart';

 class Notification_service{
final firebaseMessage=FirebaseMessaging.instance;
 
 initFCM()async{
  await firebaseMessage.requestPermission();

  final fcmToken=await firebaseMessage.getToken();
  print( "fcm$fcmToken");

FirebaseMessaging.onMessage.listen((message) {
  print("messagev${message.notification!.title}");
    //showNotification(message);
  });
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){  print("messagev${message.notification!.title}");
});
 /*
  final initialMessage = await _messaging.getInitialMessage();
  if (initialMessage != null) {
    _handleBackgroundMessage(initialMessage);
  }
*/

FirebaseMessaging.onBackgroundMessage((RemoteMessage message)async{  print("messagev${message.notification?.title??"kkkkkkkk"}");
 
 });
}
 }