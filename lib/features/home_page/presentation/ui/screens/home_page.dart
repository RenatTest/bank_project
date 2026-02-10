import 'package:bank_project/features/home_page/cubit/locale_cubit.dart';
import 'package:bank_project/features/home_page/presentation/ui/widgets/home_page_button.dart';
import 'package:bank_project/l10n/app_localization.dart';
import 'package:bank_project/router/page_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;
    final locale = context.watch<LocaleCubit>().state.languageCode;
    final text = AppLocalization(locale);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(text.mobileBank, style: TextStyle(color: color)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              text.helloUser,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            HomePageButton(
              buttonText: text.exchangeRates,
              onPressed: () => context.goNamed(PageNames.exchange),
            ),
            HomePageButton(
              buttonText: text.settings,
              onPressed: () => context.goNamed(PageNames.settings),
            ),
          ],
        ),
      ),
    );
  }
}
