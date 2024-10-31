void main() {
  showInfo();
  showName('Kyaw Kyaw');
  triple(3);
  showDate();
}

void showInfo() {
  print('showInfo');
}

void showName(String name) {
  print('showName $name');
}

int triple(int num) {
  int res = num * 2;
  return res;
}

void showDate() {
  DateTime now = DateTime.now();
  print('${now.day}');
}
