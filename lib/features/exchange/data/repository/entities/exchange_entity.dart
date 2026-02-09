import 'package:bank_project/features/exchange/data/data_source/models/exchange_dto/exchange_dto.dart';

class ExchangeEntity {
  const ExchangeEntity({
    required this.currencyName,
    required this.rate,
    required this.currencyNameShort,
    required this.date,
  });

  factory ExchangeEntity.fromDTO(ExchangeDto dto) {
    return ExchangeEntity(
      currencyName: dto.txt ?? '',
      rate: dto.rate ?? 0.0,
      currencyNameShort: dto.cc ?? '',
      date: dto.exchangedate ?? '',
    );
  }

  final String currencyName;
  final double rate;
  final String currencyNameShort;
  final String date;
}
