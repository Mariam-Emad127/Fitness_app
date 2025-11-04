import 'package:dartz/dartz.dart';
 import 'package:fitness/core/network/api_error_model.dart';
 
 abstract class ApiResult<T> {
 Future<Either<ApiErrorModel , T>> apiCall<T>(Future<T> Function() request) async {
  try {
    final result = await request();
    return Right(result); 
  // في حالة النجاح
  } catch (error) {
    return Left( 
       ApiErrorModel(message:error.toString() )
 
    ); // في حالة الفشل
  }
}
 }