import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fitness/feature/exersize_page/data/apis/exersize_api_constants.dart';
import 'package:fitness/feature/exersize_page/data/model/exresize_model.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'exersize_api_services.g.dart';

@RestApi(baseUrl: ExersizeApiConstants.baseUrl)
abstract class ExersizeApiServices {
  factory ExersizeApiServices(Dio dio) = _ExersizeApiServices;
  @GET("/exercises")
  Future<List<ExersizeModel>> getexersize();
 
   
@GET("/image")
@DioResponseType(ResponseType.bytes) // 👈 Important


 
  Future<Uint8List> getImage(
 
  @Query("exerciseId") String exerciseId,
  @Query("resolution") String resolution,
    );
 
    @GET("/exercises/exercise/{id}")
  Future< ExersizeModel> getexersizedettail(
     @Path("id") String exerciseId,
  );


  
  @GET("/exercises/targetList")
  Future<List<String>> getTargetList(); 
 
}
 //String exerciseId,String resolution