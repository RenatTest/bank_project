import 'package:flutter/material.dart';

class ExchangeItemText extends StatelessWidget {
  const ExchangeItemText({required this.itemText, super.key});

  final String itemText;

  @override
  Widget build(BuildContext context) {
    return Text(itemText, style: TextStyle(color: Colors.white));
  }
}
