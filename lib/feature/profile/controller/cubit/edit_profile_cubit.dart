import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController weightController  = TextEditingController();
  final TextEditingController hightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  EditProfileCubit() : super(EditProfileState.initial());
  final auth=FirebaseAuth.instance.currentUser!.uid;
Future<void>saveEdit(String? name,String ?age,String ?weight,String ?height)async{
FirebaseFirestore.instance.collection( "users").doc(auth).update({
"username":name,
"height":height,
"weight":weight,
"age":age
} );



}


}
