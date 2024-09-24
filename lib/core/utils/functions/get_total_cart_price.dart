import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';

num getTotalcartPrice(List<CartEntity> items) {
  num totalPrice = 0;
  for (var cartItem in items) {
    totalPrice += cartItem.itemCartQuantity * cartItem.item.itemPrice;
  }
  return totalPrice;
}
