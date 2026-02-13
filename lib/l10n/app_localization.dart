class AppLocalization {
  AppLocalization(this.languageCode);

  final String languageCode;

  static const _values = {
    'en': {
      'mobileBank': 'Mobile bank',
      'helloUser': 'Hello, User!',
      'exchangeRates': 'Exchange rates',
      'crypto': 'Сryptocurrencies',
      'settings': 'Settings',
      'nightMode': 'Night mode',
    },
    'uk': {
      'mobileBank': 'Мобільний банк',
      'helloUser': 'Привіт, Користувач!',
      'exchangeRates': 'Курс валют',
      'crypto': 'Криптовалюти',
      'settings': 'Налаштування',
      'nightMode': 'Нічний режим',
    },
  };

  String get mobileBank =>
      _values[languageCode]?['mobileBank'] ?? 'Mobile Bank';

  String get helloUser => _values[languageCode]?['helloUser'] ?? 'Hello, User!';

  String get exchangeRates =>
      _values[languageCode]?['exchangeRates'] ?? 'Exchange rates';

  String get crypto => _values[languageCode]?['crypto'] ?? 'Сryptocurrencies';

  String get settings => _values[languageCode]?['settings'] ?? 'Settings';

  String get nightMode => _values[languageCode]?['nightMode'] ?? 'Night mode';
}
