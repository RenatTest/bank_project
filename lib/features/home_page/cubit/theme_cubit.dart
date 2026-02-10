import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light) {
    _loadTheme();
  }

  Future<void> toggleTheme() async {
    final sp = await SharedPreferences.getInstance();

    if (state == ThemeMode.light) {
      emit(ThemeMode.dark);
      await sp.setBool('isDark', true);
    } else {
      emit(ThemeMode.light);
      await sp.setBool('isDark', false);
    }
  }

  Future<void> _loadTheme() async {
    final sp = await SharedPreferences.getInstance();
    final isDark = sp.getBool('isDark') ?? false;
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
  }
}
