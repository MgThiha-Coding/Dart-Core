void main() {
  // Creating an Item object with only the name
  Item item1 = Item('Nathan James');
  print('Item 1: Name: ${item1.name}, Age: ${item1.age ?? 'Not provided'}');

  // Creating an Item object with both name and age
  Item item2 = Item('Jane Doe', '30');
  print('Item 2: Name: ${item2.name}, Age: ${item2.age}');
}

class Item {
  String name; // Required non-nullable field
  String? age; // Optional nullable field

  // Constructor with optional parameter
  Item(this.name, [this.age]);
}
