void main() {
  int num1 = 1;
  int num2 = 12;

  while (num1 < num2) {
    print(num1); // Print num1 instead of undefined num variable

    if (num1 == 5) {
      break; // Break the loop when num1 equals 5
    }

    num1++; // Increment num1 to avoid infinite loop
  }
}
