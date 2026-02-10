import 'package:bank_project/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:bank_project/features/exchange/presentation/bloc/exchange_event.dart';
import 'package:bank_project/features/exchange/presentation/bloc/exchange_state.dart';
import 'package:bank_project/features/exchange/presentation/ui/widgets/exchange_exception_text.dart';
import 'package:bank_project/features/exchange/presentation/ui/widgets/exchange_item.dart';
import 'package:bank_project/features/home_page/cubit/locale_cubit.dart';
import 'package:bank_project/l10n/app_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ExchangePage extends StatelessWidget {
  const ExchangePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;
    final locale = context.watch<LocaleCubit>().state.languageCode;
    final text = AppLocalization(locale);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(text.exchangeRates, style: TextStyle(color: color)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: color),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: color),
            onPressed: () =>
                context.read<ExchangeBloc>().add(ExchangeEventLoad()),
          ),
        ],
      ),
      body: BlocBuilder<ExchangeBloc, ExchangeState>(
        builder: (context, state) {
          if (state is ExchangeStateLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.deepOrange,
                backgroundColor: color,
              ),
            );
          }
          if (state is ExchangeStateError) {
            return ExchangeExceptionText(
              exceptionText: state.exception.toString(),
            );
          }

          if (state is ExchangeStateLoaded) {
            if (state.exchange.isEmpty) {
              return ExchangeExceptionText(
                exceptionText: 'No exchange info found',
              );
            }
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: kIsWeb ? 400 : double.infinity,
                  ),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: state.exchange.length,
                    itemBuilder: (context, index) {
                      final currencyName = state.exchange[index].currencyName;
                      final rate = state.exchange[index].rate.toString();
                      final currencyNameShort =
                          state.exchange[index].currencyNameShort;
                      final date = state.exchange[index].date;

                      return ExchangeItem(
                        currencyName: currencyName,
                        currencyNameShort: currencyNameShort,
                        rate: rate,
                        date: date,
                      );
                    },
                  ),
                ),
              ),
            );
          }

          return Container();
        },
      ),
    );
  }
}
