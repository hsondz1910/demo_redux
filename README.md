# Testing Redux
## Test reducers

### Run Test
Run the following command in terminal to check the tests:
```flutter test test/reducers/counter_reducer_test.dart```

We will get the output:
![Image Description](https://i.imgur.com/bIjwIpi.png)

## Testing Actions
### Run Test for Actions
Once you have written the counter_actions_test.dart test file, run the following command to test it:
```flutter test test/actions/counter_actions_test.dart```

We will get the output:
![Image Description](https://i.imgur.com/SdFthsO.png)
## Testing Store and Middleware
### Testing Store
Run the Test
You can run your test with the following command:
```flutter test .\test\store\store_test.dart```

We will get the output:
![Image Description](https://i.imgur.com/jSXLmwy.png)

### Testing Middleware
If you want to ensure that the middleware is called correctly, you can use a mocking package like mockito to spy on the NextDispatcher and verify that it was called with the correct action.
Adding **Mockito** to `pubspec.yaml`
You can run your test with the following command:
```flutter test .\test\middleware\logging_middleware_test.dart```
We will get the output:
![Image Description](https://i.imgur.com/cvKVuDg.png)

## Testing UI Interaction with Redux State
### Run the Tests
You can run your tests using the command line:
`flutter test test/counter_screen_test.dart`.
We will get the output:
![Image Description](https://i.imgur.com/S54xz0Y.png)

If you want to run the app, you will get the UI like a picture below:
![Image Description](https://i.imgur.com/A6yfvm0.png)
