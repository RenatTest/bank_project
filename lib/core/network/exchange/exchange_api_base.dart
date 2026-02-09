import 'package:bank_project/features/exchange/data/data_source/models/exchange_dto/exchange_dto.dart';

abstract interface class ExchangeApi {
  Future<List<ExchangeDto>> getExchange();
}
