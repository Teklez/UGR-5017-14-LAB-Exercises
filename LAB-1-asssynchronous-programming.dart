// Exercise 2: Using async and await to wait for a Future to complete
Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched!');
}

// Exercise 3: Using the Future.then method to handle the result of a Future
Future<void> fetchData() {
  print('Fetching data...');
  return Future.delayed(Duration(seconds: 2), () {
    print('Data fetched!');
  });
}


