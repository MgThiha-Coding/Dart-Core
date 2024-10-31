void main() {
  int num1 = 4;
  int num2 = 5;
  if (num1 < num2) {
    print('Num2 is greater than Num1');
  } else {
    print('Num1 is greater than Num2');
  }
  // write with ternary operator instead of if else
  (num1 < num2)
      ? print('Num2 is greater than Num1')
      : print('Num1 is greater than Num2');
}
