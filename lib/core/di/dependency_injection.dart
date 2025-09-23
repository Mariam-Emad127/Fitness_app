import 'package:dio/dio.dart';
import 'package:fitness/core/helper/network/dio_factory.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/data/apis/exersize_api_services.dart';
import 'package:fitness/feature/exersize_page/data/apis/target_list_api_service.dart';
import 'package:fitness/feature/exersize_page/data/repo/exersize_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
Dio dio=DioFactory.getDio();
getIt.registerLazySingleton<ExersizeApiServices>(()=>ExersizeApiServices(dio));
getIt.registerLazySingleton<TargetListApiService>(()=>TargetListApiService(dio));

getIt.registerLazySingleton<ExersizeHomeRepo>(()=>ExersizeHomeRepo(getIt(),getIt()));
  getIt.registerFactory<ExersizesCubit>(
    () => ExersizesCubit(getIt()),
  );
}