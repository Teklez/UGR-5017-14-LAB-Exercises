// Exercise 1: Function to calculate the average of a list of numbers
double calculateAverage(List<num> numbers) {
  if (numbers.isEmpty) return 0; // Return 0 if the list is empty
  double sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

// Exercise 2: Function to find the maximum number in a list
num findMax(List<num> numbers) {
  if (numbers.isEmpty) return null; // Return null if the list is empty
  num max = numbers[0];
  for (var number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

