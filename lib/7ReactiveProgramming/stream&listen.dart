void main() {
  List<String> nameList = ['Soe Soe', 'Moe Moe', 'Toe Toe'];
  Stream stream = Stream.fromIterable(nameList); // Stream
  stream.listen((event) => print(event)); // Listen
}
