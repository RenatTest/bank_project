import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    required this.locale,
    required this.localeCode,
    required this.localeName,
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;
  final String locale;
  final String localeCode;
  final String localeName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: locale == localeCode ? Colors.green : Colors.grey,
      ),
      child: Text(localeName, style: TextStyle(color: Colors.white)),
    );
  }
}
