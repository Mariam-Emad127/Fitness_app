import 'package:dartz/dartz.dart';
import 'package:fitness/core/helper/network/api_error_model.dart';
 import 'package:fitness/feature/exersize_page/data/apis/exersize_api_services.dart';
import 'package:fitness/feature/exersize_page/data/model/exresize_model.dart';

class ExersizeHomeRepo {
ExersizeApiServices exersizeApiServices;

  ExersizeHomeRepo(this.exersizeApiServices);
  Future<Either<ApiErrorModel,List< ExersizeModel>>>getexersize()async{
 final response=await exersizeApiServices.getexersize();  
try{
  return Right(response);
}     catch(e){
return left(ApiErrorModel(message: e.toString()));
}
  }



}