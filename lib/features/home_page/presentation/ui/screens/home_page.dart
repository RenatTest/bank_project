import 'package:bank_project/features/home_page/presentation/ui/widgets/home_page_button.dart';
import 'package:bank_project/router/page_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Bank Project', style: TextStyle(color: color)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              'Hello User',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            HomePageButton(
              buttonText: 'Exchange',
              onPressed: () => context.goNamed(PageNames.exchange),
            ),
            HomePageButton(
              buttonText: 'Settings',
              onPressed: () => context.goNamed(PageNames.settings),
            ),
          ],
        ),
      ),
    );
  }
}
