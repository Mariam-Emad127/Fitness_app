import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/core/helper/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_frinds_state.dart';
part 'get_frinds_cubit.freezed.dart';

class GetFrindsCubit extends Cubit<GetFrindsState> {
  GetFrindsCubit() : super(GetFrindsState.initial());

List<UserModel>users=[];
//Map<String,dynamic>

Future<List<UserModel>>getFrind()async{
 emit(GetFrindsState.getFrindsLoading());
  try{
final usersj= await FirebaseFirestore.instance.collection("users").get();
for(var i in usersj.docs){
  print("2222222222${i.data()}");
  users.add(UserModel.fromJson( i.data()) );
}
emit(GetFrindsState.getFrindSucess(users));
return users;
}catch(e){
 emit(GetFrindsState.getFrindsFailure(e.toString())); 
 return [];
}
}

}
