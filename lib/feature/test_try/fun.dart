/*import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness/core/network/api_error_model.dart';

class apiTest<T>{
final dio=Dio();
/*
void fetchdata()async{
try{
Response response=await dio.get("");


}catch(e){}


}
*/
Future<Either<ApiErrorModel,T>> apix()async{

try{

  return Right( );
}catch(e){
  return Left( ApiErrorModel(message: e.toString()));
}


}
}
*/