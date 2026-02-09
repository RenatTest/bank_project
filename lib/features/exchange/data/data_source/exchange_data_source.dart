import 'package:bank_project/core/network/exchange/exchange_api_base.dart';
import 'package:bank_project/features/exchange/data/data_source/models/exchange_dto/exchange_dto.dart';

abstract interface class ExchangeDataSource {
  Future<List<ExchangeDto>> getExchange();
}

class ExchangeDataSourceImpl implements ExchangeDataSource {
  ExchangeDataSourceImpl(this._api);

  final ExchangeApi _api;

  @override
  Future<List<ExchangeDto>> getExchange() async {
    final result = await _api.getExchange();

    return result;
  }
}
