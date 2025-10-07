import 'package:cat_breeds/src/shared/widgets/sections/empty_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('EmptyState validation', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: EmptyState(),
        ),
      ),
    );
    const String text = 'WITHOUT INFO ...';
    expect(find.byKey(const Key('empty_section_key')), findsOneWidget);
    expect(find.byKey(const Key('empty_icon_key')), findsOneWidget);
    expect(find.text(text), findsOneWidget);
  });
}
