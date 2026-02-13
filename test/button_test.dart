import 'package:bank_project/features/home_page/presentation/ui/widgets/home_page_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCallback extends Mock {
  void call();
}

void main() {
  testWidgets('HomePageButton call onPressed', (WidgetTester tester) async {
    final mockCallback = MockCallback();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HomePageButton(
            buttonText: 'Exchange Rates',
            onPressed: mockCallback.call,
          ),
        ),
      ),
    );

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Exchange Rates'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    verify(mockCallback.call()).called(1);
  });
}
