void main() {
  Item product = Item();
  product.productName = '';
  product.price = 100.2;
  product.discountPercent = 10;
  product.quantity = 10;

  DigitalProduct digitalProduct = DigitalProduct();
  digitalProduct.downloadLink = 'www.example.com';
}

abstract class Receipt {
  void printReceipt();
}

mixin Discount {
  double calculateDiscount(double price, double discount, int quantity) {
    double discountPrice = price * discount / 100;
    double totalPrice = price * quantity;
    return totalPrice - discountPrice;
  }
}

class Item extends Receipt with Discount {
  late String productName;
  late double price;
  late double? discountPercent;
  late int quantity;

  double calculatePrice() {
    return (discountPercent != null)
        ? calculateDiscount(price, discountPercent!, quantity)
        : price * quantity;
  }

  @override
  void printReceipt() {
    double total = calculatePrice();
    if (discountPercent != null) {
      print(
          '$quantity $productName * $price = $total (Discount : $discountPercent)');
    } else {
      print('$quantity $productName * $price = $total');
    }
    print('Thanks! for shopping');
  }
}

class DigitalProduct extends Item {
  String? downloadLink;
  @override
  void printReceipt() {
    print('Download form here $downloadLink');
  }
}
