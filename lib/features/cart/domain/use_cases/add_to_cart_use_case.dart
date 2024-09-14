import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';

class AddToCartUseCase extends UseCaseWithParam<void, String> {
  final CartRepository cartRepository;

  AddToCartUseCase({required this.cartRepository});
  @override
  Future<Either<Failure, dynamic>> call({
    required param,
    int quantity = 1,
  }) {
    cartRepository.addToCart(
      productId: param,
      quantity: quantity,
    );
    return Future.value(right(null));
  }
}
