// lib/store/app_store.dart
import 'package:redux/redux.dart';
import 'package:demo_redux/reducers/counter_reducer.dart';
import 'package:demo_redux/middleware/logging_middleware.dart';

// Store constructor
class AppStore {
  static Store<int> create() {
    return Store<int>(
      counterReducer,
      middleware: [loggingMiddleware], // Add middleware here
      initialState: 0, // Initial state
    );
  }
}
