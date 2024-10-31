void main() async {
  try {
    getTriple();
  } catch (e) {
    print('The error is $e');
  }

  getSquare()
      .then((value) => print(value), onError: (error) => print(error))
      .whenComplete(() => print('Completed'))
      .timeout(Duration(seconds: 3));
}

Future<int> getTriple() async {
  return Future.delayed(Duration(seconds: 3), () => 10);
}

Future<int> getSquare() {
  return Future.delayed(Duration(seconds: 2), () => 20);
}
