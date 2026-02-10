import 'package:bank_project/features/home_page/cubit/locale_cubit.dart';
import 'package:bank_project/features/home_page/cubit/theme_cubit.dart';
import 'package:bank_project/features/settings/presentation/ui/widgets/settings_button.dart';
import 'package:bank_project/l10n/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;
    final locale = context.watch<LocaleCubit>().state.languageCode;
    final text = AppLocalization(locale);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(text.settings, style: TextStyle(color: color)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: color),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 240),
              child: SwitchListTile.adaptive(
                title: Text(text.nightMode),
                value: context.watch<ThemeCubit>().state == ThemeMode.dark,
                onChanged: (_) {
                  context.read<ThemeCubit>().toggleTheme();
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                SettingsButton(
                  locale: locale,
                  localeCode: 'en',
                  localeName: 'English',
                  onPressed: () {
                    context.read<LocaleCubit>().switchToEnglish();
                  },
                ),
                SettingsButton(
                  locale: locale,
                  localeCode: 'uk',
                  localeName: 'Українська',
                  onPressed: () {
                    context.read<LocaleCubit>().switchToUkrainian();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
