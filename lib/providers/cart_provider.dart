
import 'package:flutter/material.dart';

import '../models/cart_model.dart';
import '../models/product_model.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> cartList = [];

  num priceWithQuantity(CartModel cartModel) =>
      cartModel.salePrice * cartModel.quantity;

  int get totalItemsInCart => cartList.length;

  bool isProductInCart(String pid) {
    bool tag = false;
    for (final cartModel in cartList) {
      if (cartModel.productId == pid) {
        tag = true;
        break;
      }
    }
    return tag;
  }

  addToCart(ProductModel productModel) {

  }

  removeFromCart(String s) {

  }

  void getAllCartItems() {

  }

  void increaseQuantity(CartModel cartModel) {

  }

  void decreaseQuantity(CartModel cartModel) {

  }

  num getCartSubTotal() {
    num total = 0;
    for (final cartModel in cartList) {
      total += priceWithQuantity(cartModel);
    }
    return total;
  }

  clearCart() {

  }
}
