import 'package:get/get.dart';
import 'package:shoe_cart/models/product_model.dart';

class CartController extends GetxController {
  final _products = {}.obs;
  get products => _products;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar('Product Added', product.name);
  }

  void removeproduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get subTotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element);
}
