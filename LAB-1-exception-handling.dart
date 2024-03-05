// Exercise 1: Function that throws an exception and use a try-catch block to handle it
void throwError() {
  throw Exception('This is an exception');
}

void handleException() {
  try {
    throwError();
  } catch (e) {
    print('Exception caught: $e');
  }
}

// Exercise 2: Use a try-catch block to catch a specific type of exception
void handleSpecificException() {
  try {
    throwError();
  } on Exception catch (e) {
    print('Specific exception caught: $e');
  }
}

// Exercise 3: Use a finally block to ensure that some code runs no matter what
void executeFinallyBlock() {
  try {
    throwError();
  } catch (e) {
    print('Exception caught: $e');
  } finally {
    print('Finally block executed');
  }
}


