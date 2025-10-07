import 'package:cat_breeds/src/shared/widgets/input/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('SearchInput validation', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SearchInput(
            onChanged: (String value) {},
            onTapClearButton: () {},
          ),
        ),
      ),
    );
    const String text = 'Hellow world';
    const Key clearButtonKey = Key('clear_input_button_key');
    Finder inputFinder = find.byKey(const Key('search_input_key'));
    expect(inputFinder, findsOneWidget);
    expect(find.byKey(const Key('search_icon_key')), findsOneWidget);
    await tester.enterText(inputFinder, text);
    await tester.pumpAndSettle();
    expect(find.text(text), findsOneWidget);
    expect(find.byKey(clearButtonKey), findsOneWidget);
    await tester.tap(find.byKey(clearButtonKey));
    await tester.pumpAndSettle();
    expect(find.text(text), findsNothing);
    expect(find.byKey(clearButtonKey), findsNothing);
  });
}
