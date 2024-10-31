void main() {
  List<int> intList = [1, 2, 3, 4, 5];
  for (int i = 0; i < intList.length; i++) {
    print(i);
  }
  // loop control
  for (int i = 0; i < intList.length; i++) {
    if (i == 3) {
      break; // break at 3
    }
    if (i == 5) {
      continue; // Skip the 5
    }
  }
}
