import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:fitness/core/helper/network/api_error_model.dart';
import 'package:fitness/feature/exersize_page/data/apis/exersize_api_services.dart';
import 'package:fitness/feature/exersize_page/data/apis/target_list_api_service.dart';
import 'package:fitness/feature/exersize_page/data/model/exresize_model.dart';

class ExersizeHomeRepo {
 final ExersizeApiServices exersizeApiServices;
 final TargetListApiService targetListApiService;

  ExersizeHomeRepo(this.exersizeApiServices, this.targetListApiService);
  Future<Either<ApiErrorModel, List<ExersizeModel>>> getexersize() async {
    final response = await exersizeApiServices.getexersize();
    try {
      return Right(response  );
    } catch (e) {
      return Left(ApiErrorModel(message: e.toString()));
    }
  }

  Future<Either<ApiErrorModel, List<String>>> getTargetList() async {
    final response = await targetListApiService.getTargetList();
    try {
      return Right(response  );
    } catch (e) {
      return Left(ApiErrorModel(message: e.toString()));
    }
  }
 
  Future<Either<ApiErrorModel, Uint8List>> getImage(String id,String resolution) async {
    final response = await exersizeApiServices.getImage(id,"180");
     try {
      return Right(response  );
 
 
    } catch (e) {
      return Left(ApiErrorModel(message: e.toString()));
    }
  }

 
}
