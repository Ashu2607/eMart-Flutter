import 'package:emart/consts/consts.dart';
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

  addToCart({
    title,
    image,
    sellerName,
    color,
    quantity,
    totalPrice,
    context,
  }) async {
    await firestore.collection(cartCollection).doc().set({
      'title': title,
      'image': image,
      'seller_name': sellerName,
      'color': color,
      'quantity': quantity,
      'total_price': totalPrice,
      'added_by': currentUser!.uid
    }).onError(
        (error, stackTrace) => VxToast.show(context, msg: error.toString()));
  }

  resetValues() {
    quantity.value = 0;
    totalPrice.value = 0;
    colorIndex.value = 0;
  }
}
