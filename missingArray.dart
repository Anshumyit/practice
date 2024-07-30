void main() {
  List<int> array = [1, 3, 4, 6, 9, 10];
  List<int> missingNumbers = findMissingNumbers(array);
  print(missingNumbers); // Output should be [2, 5, 8]
}

List<int> findMissingNumbers( array) {
  List<int> missingNumbers = [];
  int min = array.reduce((a, b) => a < b ? a : b);
  int max = array.reduce((a, b) => a > b ? a : b);

  for (int i = min; i <= max; i++) {
    if (!array.contains(i)) {
      missingNumbers.add(i);
      
    }
  }
  return missingNumbers;
}
