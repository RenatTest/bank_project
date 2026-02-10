import 'package:bank_project/features/exchange/data/data_source/exchange_data_source.dart';
import 'package:bank_project/features/exchange/data/repository/entities/exchange_entity.dart';

abstract interface class ExchangeRepository {
  Future<List<ExchangeEntity>> getExchange();
}

class ExchangeRepositoryImpl implements ExchangeRepository {
  ExchangeRepositoryImpl(this.dataSource);

  final ExchangeDataSource dataSource;

  @override
  Future<List<ExchangeEntity>> getExchange() async {
    final response = await dataSource.getExchange();
    return response.map(ExchangeEntity.fromDTO).toList();
  }
}
