import 'package:bank_project/features/exchange/presentation/ui/screens/exchange_page.dart';
import 'package:bank_project/features/home_page/presentation/ui/screens/home_page.dart';
import 'package:bank_project/features/settings/presentation/ui/screens/settings_page.dart';
import 'package:bank_project/router/page_names.dart';
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
          builder: (context, state) => const ExchangePage(),
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
