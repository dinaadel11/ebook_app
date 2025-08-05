import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapp/core/utils/api_service.dart';
import 'package:newsapp/features/home/data/repos/home_repo_implemntation.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplemntation>(HomeRepoImplemntation(
    getIt.get<ApiService>(),
  ));
}
