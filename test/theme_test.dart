// ignore_for_file: inference_failure_on_instance_creation

import 'package:bank_project/features/home_page/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ThemeCubit', () {
    setUp(() async {
      SharedPreferences.setMockInitialValues({'isDark': true});
    });

    test('load theme from SharedPreferences', () async {
      final cubit = ThemeCubit();
      await Future.delayed(Duration(milliseconds: 50));

      expect(cubit.state, ThemeMode.dark);
    });

    test('toggleTheme', () async {
      SharedPreferences.setMockInitialValues({'isDark': true});
      final cubit = ThemeCubit();
      await Future.delayed(const Duration(milliseconds: 50));
      await cubit.toggleTheme();

      expect(cubit.state, ThemeMode.light);
    });
  });
}
