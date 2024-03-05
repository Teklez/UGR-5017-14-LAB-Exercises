void main() {
  // Exercise 1: Switch Case for Day of the Week
  int day = 1; // Change this value from 1 to 7 to see different days
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }

  // Exercise 2: Print the First 10 Numbers in the Fibonacci Sequence
  int n = 10;
  int first = 0;
  int second = 1;
  print('First $n numbers in Fibonacci sequence:');
  for (int i = 0; i < n; i++) {
    print(first);
    int next = first + second;
    first = second;
    second = next;
  }
}
