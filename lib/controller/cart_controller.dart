import 'package:alemeno_app/model/test_model.dart';
import 'package:flutter/cupertino.dart';

class CartController extends ChangeNotifier {
  int _cartCount = 0;
  int get cartCount => _cartCount;
  List<TestModel> cartItems = [];

  void addToCart(TestModel testModel) {
    cartItems.add(testModel);
    _cartCount++;
    notifyListeners();
    print(cartItems);
  }

  void removeFromCart(TestModel testModel) {
    cartItems.remove(testModel);
    _cartCount--;
    notifyListeners();
  }
}
