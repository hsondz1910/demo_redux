import 'package:flutter_test/flutter_test.dart';
import 'package:demo_redux/reducers/counter_reducer.dart';
import 'package:demo_redux/actions/counter_actions.dart';

void main() {
  group('CounterReducer with Actions', () {
    test('increments state when increment action is dispatched', () {
      final int initialState = 0;
      final result = counterReducer(initialState, CounterAction.increment);
      expect(result, 1);
    });

    test('decrements state when decrement action is dispatched', () {
      final int initialState = 0;
      final result = counterReducer(initialState, CounterAction.decrement);
      expect(result, -1);
    });
  });
}
