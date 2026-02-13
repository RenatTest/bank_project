import 'dart:ui';

import 'package:bank_project/features/home_page/cubit/locale_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('LocaleCubit', () {
    setUp(() async {
      SharedPreferences.setMockInitialValues({'app_language': 'en'});
    });

    test('load language from SharedPreferences', () async {
      final cubit = LocaleCubit();
      // ignore: inference_failure_on_instance_creation
      await Future.delayed(Duration(milliseconds: 50));
      expect(cubit.state, const Locale('en'));
    });

    test('switchToEnglish / switchToUkrainian', () async {
      final cubit = LocaleCubit()..switchToUkrainian();
      expect(cubit.state, const Locale('uk'));

      cubit.switchToEnglish();
      expect(cubit.state, const Locale('en'));
    });
  });
}
