import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/cart/data/data_sources/cart_remote_data_source.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CartRepositoryImplementation extends CartRepository {
  final CartRemoteDataSource cartRemoteDataSource;

  CartRepositoryImplementation({required this.cartRemoteDataSource});
  @override
  void addToCart({required String productId, required int quantity}) {
    cartRemoteDataSource.addToCart(productId: productId, quantity: quantity);
  }

  @override
  Future<Either<Failure, List<CartEntity>>> fetchCartItems() async {
    try {
      List<CartEntity> cartItems = await cartRemoteDataSource.fetchCartItems();
      return right(cartItems);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(dioException: e));
      } else {
        return left(
          ServerFailure(message: e.toString()),
        );
      }
    }
  }

  @override
  void removeFromCart({required String productId}) {
    cartRemoteDataSource.removeFromCart(productId: productId);
  }

  @override
  void updateQuantity({required String productId, required String quantity}) {
    cartRemoteDataSource.updateQuantity(
        productId: productId, quantity: quantity);
  }

  @override
  Future<Either<Failure, void>> cartCheckout() async {
    try {
      await cartRemoteDataSource.cartCheckout();
      return right(null);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(dioException: e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
