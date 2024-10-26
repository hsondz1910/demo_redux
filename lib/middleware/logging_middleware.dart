// lib/middleware/logging_middleware.dart
import 'package:redux/redux.dart';

void loggingMiddleware(Store store, dynamic action, NextDispatcher next) {
  print('Action dispatched: $action');
  next(action); // Pass the action to the next middleware or reducer
}
