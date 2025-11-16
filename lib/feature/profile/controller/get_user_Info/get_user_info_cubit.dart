import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/helper/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
      final UserModel user = snap.docs.map((e) => UserModel.fromJson(e.data())).first;//.single;
      emit(GetUserInfoState.getUserInfoSucess(user));
    });
  }

  final supabase = Supabase.instance.client;
  final String uid = FirebaseAuth.instance.currentUser!.uid;
  String fileName=DateTime.now().microsecond.toString();
/*
  Future<void> uploadProfileImageToSupabase({
    required File file,
    //required String fileName,
  }) async {
    try {
      emit(GetUserInfoState.getUserInfoLoading());
      await supabase.storage.from("profile").upload("$fileName/", file);

      final publicUrl =
          supabase.storage.from("profile").getPublicUrl("$fileName/");
      updadtephoto(uid, publicUrl);
    } catch (e) {
      emit(GetUserInfoState.getUserInfoFailure(e.toString()));
    }
  }
*/
  Future<void> updadtephoto(String uid, String publicUrl) async {
    FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .update({"photo": publicUrl});
  }

//Future<File?> picimage() async {
  Future  picimage() async {

    var pickfile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickfile != null) {
     
      File file = File(pickfile.path);
            await supabase.storage.from("profile").upload(fileName, file);

      final publicUrl =
          supabase.storage.from("profile").getPublicUrl(fileName);
       updadtephoto(uid, publicUrl);
      return file;
  
 }
   }
  


  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("user");
  }
}
