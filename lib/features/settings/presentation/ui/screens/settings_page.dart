import 'package:bank_project/features/home_page/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Settings Page', style: TextStyle(color: color)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: color),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 240,
          child: SwitchListTile(
            title: const Text('Night mode'),
            value: context.watch<ThemeCubit>().state == ThemeMode.dark,
            onChanged: (_) {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
