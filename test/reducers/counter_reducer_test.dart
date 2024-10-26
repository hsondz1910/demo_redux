import 'package:flutter_test/flutter_test.dart';
import 'package:demo_redux/reducers/counter_reducer.dart';
import 'package:demo_redux/actions/counter_actions.dart';

void main() {
  group('CounterReducer', () {
    test('increments the state by 1 when action is increment', () {
      final int initialState = 0;
      final result = counterReducer(initialState, CounterAction.increment);
      expect(result, 1);
    });

    test('decrements the state by 1 when action is decrement', () {
      final int initialState = 0;
      final result = counterReducer(initialState, CounterAction.decrement);
      expect(result, -1);
    });

    test('returns the same state if action is unrecognized', () {
      final int initialState = 5;
      // Instead of using 'UNKNOWN_ACTION', you can use an invalid action.
      final result = counterReducer(initialState, null); // Assume null is invalid action
      expect(result, initialState);
    });
  });
}
