import 'package:bank_project/features/exchange/data/repository/exchange_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bank_project/features/exchange/presentation/bloc/exchange_event.dart';
import 'package:bank_project/features/exchange/presentation/bloc/exchange_state.dart';

class ExchangeBloc extends Bloc<ExchangeEvent, ExchangeState> {
  ExchangeBloc(this.exchangeRepository) : super(ExchangeStateInitial()) {
    on<ExchangeEventLoad>((event, emit) async {
      try {
        emit(ExchangeStateLoading());
        final exchange = await exchangeRepository.getExchange();
        emit(ExchangeStateLoaded(exchange: exchange));
      } catch (e) {
        emit(ExchangeStateError(exception: e));
      }
    });
  }

  final ExchangeRepository exchangeRepository;
}
