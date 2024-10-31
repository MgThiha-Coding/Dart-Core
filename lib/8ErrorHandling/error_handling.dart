void main() {
  try {
    numberBetween1to10(40);
  } on GreaterThanError catch (e) {
    print(e.error);
  } catch (e) {
    print(e);
  }
}

void numberBetween1to10(int num) {
  if (num > 0 && num < 11) {
    print('number is between 1 and 10');
  } else {
    throw GreaterThanError('This is the error message manually created');
  }
}

class GreaterThanError implements Exception {
  final String error;
  GreaterThanError(this.error);
}
