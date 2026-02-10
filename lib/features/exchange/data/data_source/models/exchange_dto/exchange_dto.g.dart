// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeDto _$ExchangeDtoFromJson(Map<String, dynamic> json) => ExchangeDto(
  r030: (json['r030'] as num?)?.toInt(),
  txt: json['txt'] as String?,
  rate: (json['rate'] as num?)?.toDouble(),
  cc: json['cc'] as String?,
  exchangedate: json['exchangedate'] as String?,
  special: json['special'],
);

Map<String, dynamic> _$ExchangeDtoToJson(ExchangeDto instance) =>
    <String, dynamic>{
      'r030': instance.r030,
      'txt': instance.txt,
      'rate': instance.rate,
      'cc': instance.cc,
      'exchangedate': instance.exchangedate,
      'special': instance.special,
    };
