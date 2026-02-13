import 'package:bank_project/features/home_page/cubit/locale_cubit.dart';
import 'package:bank_project/l10n/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://coinmarketcap.com/'));
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;
    final locale = context.watch<LocaleCubit>().state.languageCode;
    final text = AppLocalization(locale);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(text.crypto, style: TextStyle(color: color)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: color),
          onPressed: () => context.pop(),
        ),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
