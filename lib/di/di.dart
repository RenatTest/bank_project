import 'package:bank_project/core/network/exchange/retrofit/exchange_retrofit_api.dart';
import 'package:bank_project/features/exchange/data/data_source/exchange_data_source.dart';
import 'package:bank_project/features/exchange/data/repository/exchange_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDI() {
  _registerExchangeRepository();
}

void _registerExchangeRepository() {
  getIt.registerLazySingleton<ExchangeRepository>(
    () => ExchangeRepositoryImpl(
      ExchangeDataSourceImpl(ExchangeApiImplRetrofit(Dio())),
    ),
  );
}
