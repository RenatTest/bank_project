import 'package:bank_project/features/exchange/presentation/ui/widgets/exchange_item_text.dart';
import 'package:flutter/material.dart';

class ExchangeItem extends StatelessWidget {
  const ExchangeItem({
    required this.currencyName,
    required this.currencyNameShort,
    required this.rate,
    required this.date,
    super.key,
  });

  final String currencyName;
  final String currencyNameShort;
  final String rate;
  final String date;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              ExchangeItemText(itemText: currencyNameShort),
              Flexible(
                child: Text(
                  currencyName,
                  style: TextStyle(color: color),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),

        Row(
          spacing: 10,
          children: [
            ExchangeItemText(itemText: rate),
            ExchangeItemText(itemText: date),
          ],
        ),
      ],
    );
  }
}
