void main() {
  // List
  List<int> intList = [1, 2, 3, 4]; // List ( index )
  print(intList);

  List<String> StringList = [
    'Dart',
    'JavaScript',
    'Java',
    'Jython',
    'Golang',
  ];
  print(StringList);
  List<dynamic> dynamicList = [1, 2, 3, 4, 'Five', true];
  // Merge Lists using spread operator
  List<dynamic> mergedList = [1, 'two', true, ...dynamicList];

  for (var i in mergedList) {
    print(i);
  }
  for (var e in mergedList) {
    print(e);
  }

  // Map
  Map Mp1 = {'one': 1, 'two': 2}; // Map <Key,value>
  Map<String, int> Mp2 = {'one': 1, 'two': 2};
  print(Mp1);
  print(Mp2);
  Mp2.forEach((key, value) {
    print(key);
    print(value);
  });

  // Set
  Set St1 = {true, 'false', 1}; // Set (Unordered)
  for (var i in St1) {
    print(i);
  }
  for (var e in St1) {
    print(e);
  }
}
