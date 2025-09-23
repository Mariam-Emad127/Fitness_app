import 'package:dio/dio.dart';
import 'package:fitness/feature/exersize_page/data/apis/exersize_api_constants.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'target_list_api_service.g.dart';
@RestApi(baseUrl: ExersizeApiConstants.baseUrl)

abstract class TargetListApiService {
 factory TargetListApiService(Dio dio) = _TargetListApiService;
  @GET( "/exercises/targetList")
  Future<List<String>> getTargetList();  

}