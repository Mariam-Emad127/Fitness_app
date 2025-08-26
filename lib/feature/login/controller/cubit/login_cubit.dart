 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 //import 'package:google_sign_in/google_sign_in.dart';
 
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

   final formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
 

   Future<void> signInWithEmailAndPassword({required String email,required String password})async {
     emit(LoginState.loginLoading()  );
    try {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(LoginSucess());
      } catch (e) {
       emit(LoginState.loginFailure(  e.toString()));
  
    }

   }

 

//  final FirebaseAuth _auth = FirebaseAuth.instance;
 
 /*
Future<void> signInWithGoogle() async {
  try {
    // 1️⃣ تسجيل الدخول بجوجل
    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      debugPrint("❌ المستخدم لغى تسجيل الدخول");
      return;
    }

    // 2️⃣ جلب الـ tokens
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    if (googleAuth.accessToken == null && googleAuth.idToken == null) {
      throw Exception("❌ مفيش AccessToken أو IdToken");
    }

    // 3️⃣ إنشاء Credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // 4️⃣ تسجيل الدخول في Firebase
    final userCredential = await _auth.signInWithCredential(credential);

    debugPrint("✅ تسجيل دخول ناجح: ${userCredential.user?.displayName}");
  } catch (e) {
    debugPrint("⚠️ خطأ في Google Sign-In: $e");
  }
}
*/

/*
 Future<void>  signInWithGoogle() async {
    try {
    
     final googleUser= await  GoogleSignIn.instance.authenticate(scopeHint: ['email']);
  
      // 2️⃣ جلب الـ tokens
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      if (googleAuth.idToken == null && googleAuth.idToken == null) {
        throw Exception("❌ مفيش AccessToken أو IdToken");
      }

      // 3️⃣ إنشاء Credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.idToken,
        idToken: googleAuth.idToken,
      );

      // 4️⃣ تسجيل الدخول في Firebase
      final userCredential =
          await _auth.signInWithCredential(credential);

      debugPrint("✅ تسجيل دخول ناجح: ${userCredential.user?.displayName}");
    } catch (e) {
      debugPrint("⚠️ خطأ في Google Sign-In: $e");
    }

}
*/
}

 
