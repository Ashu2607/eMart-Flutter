import 'package:emart/models/category_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var subCat = [];
  var quantity = 0.obs;
  var colorIndex = 0.obs;
  var totalPrice = 0.obs;

  getSubCategories(title) async {
    subCat.clear();
    var data = await rootBundle.loadString('lib/services/category_model.json');
    var decoded = categoryModelFromJson(data);
    var sub =
        decoded.categories.where((element) => element.name == title).toList();

    for (var category in sub[0].subcategory) {
      subCat.add(category);
    }
  }

  changeColorIndex(index) {
    colorIndex.value = index;
  }

  increaseQuantity(totalQuantity) {
    if (quantity.value < totalQuantity) quantity.value++;
  }

  decreaseQuantity() {
    if (quantity.value > 0) quantity.value--;
  }

  calculateTotalPrice(price) => totalPrice.value = price * quantity.value;
}
