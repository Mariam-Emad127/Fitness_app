import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/feature/profile/data/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_info_state.dart';
part 'get_user_info_cubit.freezed.dart';

class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit() : super(GetUserInfoState.initial());
 
Future <void> getUserData() async{
  emit(GetUserInfoState.getUserInfoLoading());

await  FirebaseFirestore.instance
      .collection("users")
      .where("uid", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
      .snapshots()
      .listen((snap) {
        final user = snap.docs.map((e) => UserModel.fromJson(e.data())).single;
        emit(GetUserInfoState.getUserInfoSucess(user));
      });
      
}

  /*


  Future<void> getUserData( )async{
    UserModel userData;
    try{
      emit(GetUserInfoState.getUserInfoLoading());
      var user=await FirebaseFirestore.instance.collection( "users") 
      .where("uid",isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
userData= user.docs.map((doc)=>
   UserModel.fromJson(doc.data())).single;
 
       emit(GetUserInfoState.getUserInfoSucess( userData )
        );
    }catch(h){
      emit(GetUserInfoState.getUserInfoFailure(h.toString()));
     // print("222222222$h");
     }
  }

*/
}
