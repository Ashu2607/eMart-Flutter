import 'package:get/get.dart';

class CartCotroller extends GetxController {
  var totalPrice = 0.obs;

  // calculate total price of item present in cart
  calculateTotalPrice(data) {
    totalPrice.value = 0;
    for (var price = 0; price < data.length; price++) {
      totalPrice.value =
          totalPrice.value + int.parse(data[price]['total_price'].toString());
    }
  }
}
