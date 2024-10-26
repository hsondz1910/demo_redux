// test/counter_screen_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:demo_redux/store/app_store.dart';
import 'package:demo_redux/actions/counter_actions.dart';
import 'package:demo_redux/main.dart';

void main() {
  group('CounterScreen', () {
    late Store<int> store;

    setUp(() {
      store = AppStore.create(); // Initialize your store here
    });

    testWidgets('initial count is 0', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp(store: store));

      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('increment button increases count', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp(store: store));

      await tester.tap(find.byType(ElevatedButton).first); // Tap increment button
      await tester.pump(); // Rebuild the widget with the new state

      expect(find.text('1'), findsOneWidget); // Verify count is now 1
    });

    testWidgets('decrement button decreases count', (WidgetTester tester) async {
      // First, increment the count to 1
      await tester.pumpWidget(MyApp(store: store));
      await tester.tap(find.byType(ElevatedButton).first);
      await tester.pump();

      // Now tap decrement button
      await tester.tap(find.byType(ElevatedButton).last);
      await tester.pump();

      expect(find.text('0'), findsOneWidget); // Verify count is now 0
    });
  });
}
