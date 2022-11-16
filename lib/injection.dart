
import 'package:app_jwt/cubit/my_cubit.dart';
import 'package:app_jwt/data/my_repo.dart';
import 'package:app_jwt/service/web_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
  getIt.registerLazySingleton<WebServices>(() => WebServices(createAndsetupDio()));
}

 Dio createAndsetupDio(){
    Dio dio = Dio();
    dio
    ..options.connectTimeout = 10 * 1000
    ..options.receiveTimeout = 10 * 1000;

    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      requestBody: true
    ));
    return dio;
}

