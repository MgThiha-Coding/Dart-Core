void main() {
  triple(num: 2, result: (int triple) => print('Thr triple value is $triple'));
  square(4);
  showInfo()();
}

// Higher Order function ( function as parameter )
void triple({required int num, required Function(int) result}) {
  int res = num * 2;
  result(res);
}

// Higher Order fucntion ( function as return type )
void square(int number) {
  int res = number * 2;
  return show(res);
}

void show(int num) => print('Thre result is $num');

// Higher Order Function ( function as return type dyanamic)

showInfo() {
  result() => print('Thre result is..');
  return result;
}
