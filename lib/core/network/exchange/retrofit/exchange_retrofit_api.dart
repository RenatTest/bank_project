import 'package:bank_project/core/network/exchange/exchange_api_base.dart';
import 'package:bank_project/features/exchange/data/data_source/models/exchange_dto/exchange_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'exchange_retrofit_api.g.dart';

@RestApi(baseUrl: 'https://bank.gov.ua')
abstract class ExchangeApiImplRetrofit implements ExchangeApi {
  factory ExchangeApiImplRetrofit(Dio dio, {String baseUrl}) =
      _ExchangeApiImplRetrofit;

  @override
  @GET('/NBUStatService/v1/statdirectory/exchange?json')
  Future<List<ExchangeDto>> getExchange();
}
