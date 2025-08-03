import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController username = TextEditingController();
  SignUpCubit() : super(SignUpState.initial());


  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  }) async {
    emit(SignUpState.signUpLoading()); // Emitting loading state
 
    try {
      // Check if any of the fields are empty
      if (email.isNotEmpty && password.isNotEmpty && username.isNotEmpty) {
        // Create user with Firebase Authentication
        final UserCredential credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        await FirebaseFirestore.instance
            .collection("users")
            .doc(credential.user!.uid)
            .set({
          "username": username,
          "uid": credential.user!.uid,
          "email": email,
          // Add other fields if needed
        });

        emit( SignUpState.signUpSucees()); // Emit success state
      } else {
        throw Exception('All fields are required.');
      }
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuth-specific errors
      if (e.code == 'weak-password') {
       // print('The password provided is too weak.');
        emit(SignUpState.signUpFailuier('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
         emit(SignUpState.signUpFailuier('The account already exists for that email.'));
      } else {
        print(e.message);
        emit(SignUpState.signUpFailuier(e.message ?? 'An unknown error occurred.'));
      }
    } catch (e) {
      // Handle general errors
      print('Error: $e');
      emit(SignUpState.signUpFailuier(e.toString()));
    }
  }

}
