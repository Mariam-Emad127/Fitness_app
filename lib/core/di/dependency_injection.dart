import 'package:dio/dio.dart';
import 'package:fitness/core/helper/network/dio_factory.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/get_image/cubit/get_image_cubit.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/target_exersize/cubit/target_exersize_cubit.dart';
import 'package:fitness/feature/exersize_page/data/apis/exersize_api_services.dart';
 import 'package:fitness/feature/exersize_page/data/repo/exersize_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
Dio dio=DioFactory.getDio();
getIt.registerLazySingleton<ExersizeApiServices>(()=>ExersizeApiServices(dio));
 
getIt.registerLazySingleton<ExersizeHomeRepo>(()=>ExersizeHomeRepo(getIt()));
  getIt.registerFactory<ExersizesCubit>(
    () => ExersizesCubit(getIt()),
  );

    getIt.registerFactory<TargetExersizeCubit>(
    () => TargetExersizeCubit(getIt()),
  );

    getIt.registerFactory<GetImageCubit>(
    () => GetImageCubit(getIt()),
  );
}