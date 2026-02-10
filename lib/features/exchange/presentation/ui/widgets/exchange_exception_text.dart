import 'package:flutter/material.dart';

class ExchangeExceptionText extends StatelessWidget {
  const ExchangeExceptionText({required this.exceptionText, super.key});

  final String exceptionText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        exceptionText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, color: Colors.deepOrange),
      ),
    );
  }
}
