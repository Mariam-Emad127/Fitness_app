import 'package:dio/dio.dart';
import 'package:fitness/feature/exersize_page/data/apis/exersize_api_constants.dart';
import 'package:fitness/feature/exersize_page/data/model/exresize_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'exersize_api_services.g.dart';

@RestApi(baseUrl: ExersizeApiConstants.baseUrl)
abstract class ExersizeApiServices {
  factory ExersizeApiServices(Dio dio) = _ExersizeApiServices;
  @GET("/exercises")
  Future<List<ExersizeModel>> getexersize();


}
