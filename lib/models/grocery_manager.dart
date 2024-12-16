import 'package:flutter/material.dart';

import 'models.dart';

class GroceryManager extends ChangeNotifier {
  final _groceryItems = <GroceryItem>[];
  List<GroceryItem> get groceryItem => List.unmodifiable(_groceryItems);

  void deleteItem(int index) {
    _groceryItems.removeAt(index);
    notifyListeners();
  }

  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    notifyListeners();
  }

  void completeItem(int index, bool change) {
    final item = _groceryItems[index];
    _groceryItems[index] = item.copyWith(isComplete: true);
    notifyListeners();
  }
}
