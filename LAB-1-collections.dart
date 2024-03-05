// Exercise 1: Function to find the highest number in a list of integers
int findHighest(List<int> numbers) {
  if (numbers.isEmpty) return null; // Return null if the list is empty
  int highest = numbers[0];
  for (var number in numbers) {
    if (number > highest) {
      highest = number;
    }
  }
  return highest;
}

// Exercise 2: Function to print all keys and values of a Map
void printMapKeysValues(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}

// Exercise 3: Function to remove duplicates from a list
List<T> removeDuplicates<T>(List<T> list) {
  return list.toSet().toList();
}
