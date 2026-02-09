import 'package:bank_project/di/di.dart';
import 'package:bank_project/features/exchange/data/repository/exchange_repository.dart';
import 'package:bank_project/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:bank_project/features/exchange/presentation/bloc/exchange_event.dart';
import 'package:bank_project/features/exchange/presentation/ui/screens/exchange_page.dart';
import 'package:bank_project/features/home_page/presentation/ui/screens/home_page.dart';
import 'package:bank_project/features/settings/presentation/ui/screens/settings_page.dart';
import 'package:bank_project/router/page_names.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: PageNames.homePage,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'exchange',
          name: PageNames.exchange,
          builder: (context, state) => BlocProvider(
            create: (context) =>
                ExchangeBloc(getIt.get<ExchangeRepository>())
                  ..add(ExchangeEventLoad()),
            child: const ExchangePage(),
          ),
        ),
        GoRoute(
          path: 'settings',
          name: PageNames.settings,
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],
);
