void main() {
  dynamic value = 10; // dynamic type

  // Casting to int
  int intValue = value as int; // Type cast from dynamic to int
  print('The integer value is: $intValue');

  // Casting to double
  double doubleValue = intValue.toDouble(); // Converting int to double
  print('The double value is: $doubleValue');
}
