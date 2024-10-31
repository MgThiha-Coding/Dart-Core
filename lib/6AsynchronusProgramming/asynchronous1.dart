import 'dart:async';

void main() {
  scheduleMicrotask(() {
    print('heavy task');
  }); // 2
  Future(() => print('small hevy task')); //

  print('task1'); // 1
  print('task2');
  print('task3');
  print('task4');
}
