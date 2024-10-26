// test/logging_middleware_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:demo_redux/actions/counter_actions.dart';
import 'package:demo_redux/middleware/logging_middleware.dart';
import 'package:mockito/mockito.dart';

// Create a mock for NextDispatcher
class MockNextDispatcher extends Mock {
  void call(dynamic action); // Define the call method
}

void main() {
  group('Logging Middleware', () {
    late MockNextDispatcher mockNext;

    setUp(() {
      mockNext = MockNextDispatcher();
    });

    test('should call next dispatcher with the action', () {
      final action = CounterAction.increment;
      // Call middleware with a dummy reducer
      loggingMiddleware(Store<int>((state, action) => state, initialState: 0), action, mockNext);
      verify(mockNext(action)).called(1);
    });
  });
}
