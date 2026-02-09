import 'package:json_annotation/json_annotation.dart';

part 'exchange_dto.g.dart';

@JsonSerializable()
class ExchangeDto {
  int? r030;
  String? txt;
  double? rate;
  String? cc;
  String? exchangedate;
  dynamic special;

  ExchangeDto({
    this.r030,
    this.txt,
    this.rate,
    this.cc,
    this.exchangedate,
    this.special,
  });

  factory ExchangeDto.fromJson(Map<String, dynamic> json) {
    return _$ExchangeDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExchangeDtoToJson(this);
}
