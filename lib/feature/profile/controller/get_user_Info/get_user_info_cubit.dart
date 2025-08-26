import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/feature/profile/data/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'get_user_info_state.dart';
part 'get_user_info_cubit.freezed.dart';

class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit() : super(GetUserInfoState.initial());

  Future<void> getUserData() async {
    emit(GetUserInfoState.getUserInfoLoading());

      FirebaseFirestore.instance
        .collection("users")
        .where("uid", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen((snap) {
      final user = snap.docs.map((e) => UserModel.fromJson(e.data())).single;
      emit(GetUserInfoState.getUserInfoSucess(user));
    });
  }
/*
  final supabase = Supabase.instance.client;
  Future<String> uploadProfileImageToSupabase(
      {required File file,
      required String fileName,
      required String uid}) async {
    try {
      emit(GetUserInfoState.getUserInfoLoading());
      await supabase.storage.from("profile").upload("$fileName/", file);

      final publicUrl =
          supabase.storage.from("profile").getPublicUrl("$fileName/");
      FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .update({"photo": publicUrl});
      return publicUrl;
    } catch (e) {
      emit(GetUserInfoState.getUserInfoFailure(e.toString()));
      // ignore: avoid_print
      print("Error uploading to Supabase: $e");
      return "Error";
    }

  }
*/
//Future<File?> picimage() async {
Future<File?> picimage() async {
    var pickfile = await ImagePicker().pickImage(source: ImageSource.gallery);

if(pickfile!=null){
      File file = File(pickfile.path);
     return file;
  
  }
  }
 
  
}
