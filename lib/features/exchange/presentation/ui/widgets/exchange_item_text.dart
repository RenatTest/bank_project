import 'package:flutter/material.dart';

class ExchangeItemText extends StatelessWidget {
  const ExchangeItemText({required this.itemText, super.key});

  final String itemText;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;

    return Text(itemText, style: TextStyle(color: color));
  }
}
