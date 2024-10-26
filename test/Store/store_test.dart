// test/store_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:demo_redux/store/app_store.dart';
import 'package:demo_redux/actions/counter_actions.dart';
import 'package:demo_redux/reducers/counter_reducer.dart';

void main() {
  group('Redux Store', () {
    late Store<int> store; // Use the 'late' keyword to indicate that the variable will be initialized later

    setUp(() {
      // Initialize Store with reducer and initial state
      store = AppStore.create();
    });

    test('initial state is 0', () {
      expect(store.state, 0);
    });

    test('increments the state when increment action is dispatched', () {
      store.dispatch(CounterAction.increment);
      expect(store.state, 1);
    });

    test('decrements the state when decrement action is dispatched', () {
      store.dispatch(CounterAction.decrement);
      expect(store.state, -1);
    });

    test('multiple actions affect state correctly', () {
      store.dispatch(CounterAction.increment); // state = 1
      store.dispatch(CounterAction.increment); // state = 2
      store.dispatch(CounterAction.decrement); // state = 1
      expect(store.state, 1); // Confirm that the final state is 1
    });

    test('returns the same state if action is unrecognized', () {
      final int initialState = 5;
      store = Store<int>(counterReducer, initialState: initialState);
      store.dispatch(null); // Dispatch an unrecognized action
      expect(store.state, initialState); // The state should not change
    });
  });
}
