import 'package:bank_project/features/exchange/data/repository/entities/exchange_entity.dart';

class ExchangeState {}

class ExchangeStateInitial extends ExchangeState {}

class ExchangeStateLoading extends ExchangeState {}

class ExchangeStateLoaded extends ExchangeState {
  ExchangeStateLoaded({required this.exchange});

  final List<ExchangeEntity> exchange;
}

class ExchangeStateError extends ExchangeState {
  ExchangeStateError({this.exception});

  final Object? exception;
}
