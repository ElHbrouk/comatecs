import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CartRepository {
  void addToCart({required String productId, required int quantity});
  void updateQuantity({required String productId, required String quantity});
  void removeFromCart({required String productId});
  Future<Either<Failure, List<CartEntity>>> fetchCartItems();
  Future<Either<Failure, void>> cartCheckout();
}
