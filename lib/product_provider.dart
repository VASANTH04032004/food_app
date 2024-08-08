import 'package:flutter/material.dart';
import ' module/products.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = foodItems;

  List<Product> get products => _products;

  void toggleFavorite(Product product) {
    final index = _products.indexOf(product);
    if (index != -1) {
      _products[index].toggleFavorite();
      notifyListeners(); // Notify listeners of the change
    }
  }
}
