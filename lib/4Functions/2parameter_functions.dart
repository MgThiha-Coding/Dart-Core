void main() {
  // positional parameter
  showInfo1('Soe Soe', 'Suffern', 'New York University');
  // optional parameter , default value
  showInfo2('Moe Moe', 'LA');
  // name paramter , optional , default value
  showInfo3(name: 'Toe Toe');
}

// positional parameter
void showInfo1(String name, String address, String education) {
  print('$name is from $address . He graduated from $education');
}

// optional parameter
void showInfo2(String name, String address,
    [String? education, String citizen = 'United States']) {
  print('$name is from $address,graduated from $education , $citizen');
}

// name parameter
void showInfo3({required String name, int? age, String gender = 'male'}) {
  print(name);
  print(age);
  print(gender);
}
