// lib/reducers/counter_reducer.dart
import 'package:demo_redux/actions/counter_actions.dart';

int counterReducer(int state, dynamic action) { // Accept any type
  if (action is CounterAction) {
    switch (action) {
      case CounterAction.increment:
        return state + 1;
      case CounterAction.decrement:
        return state - 1;
    }
  }
  return state; // Returns the current state if the action is not recognized
}
