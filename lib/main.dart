import 'package:bank_project/di/di.dart';
import 'package:bank_project/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
