import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en')) {
    _loadLanguage();
  }
  static const _storageKey = 'app_language';

  void switchToEnglish() => _setLanguage(const Locale('en'));
  void switchToUkrainian() => _setLanguage(const Locale('uk'));

  Future<void> _setLanguage(Locale locale) async {
    emit(locale);
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_storageKey, locale.languageCode);
  }

  Future<void> _loadLanguage() async {
    final sp = await SharedPreferences.getInstance();
    final code = sp.getString(_storageKey);
    if (code != null) emit(Locale(code));
  }
}
