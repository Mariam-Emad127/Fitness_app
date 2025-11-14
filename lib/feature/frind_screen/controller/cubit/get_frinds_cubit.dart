 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/feature/profile/data/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_frinds_state.dart';
part 'get_frinds_cubit.freezed.dart';

class GetFrindsCubit extends Cubit<GetFrindsState> {
  GetFrindsCubit() : super(GetFrindsState.initial());

List<UserModel>users=[];
//Map<String,dynamic>
Future<List<UserModel>>getFrind()async{
  GetFrindsLoading();
  try{
final usersj= await FirebaseFirestore.instance.collection("users").get();
usersj.docs.map((e) => (),);
print(usersj);

emit(GetFrindsState.getFrindSucess());
return users;
}catch(e){
 emit(GetFrindsState.getFrindsFailure(e.toString())); 
}
}

}
