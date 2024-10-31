void main() {
  int num1 = 1;
  int num2 = 12;

  do {
    print(num1); // Print num1

    if (num1 == 5) {
      break; // Break the loop when num1 equals 5
    }

    num1++; // Increment num1
  } while (num1 < num2); // Condition to check after the loop execution
}
