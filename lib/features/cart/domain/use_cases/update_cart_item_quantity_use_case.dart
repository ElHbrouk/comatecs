import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateCartQuantityUseCase extends UseCaseWithParam<void, String> {
  final CartRepository cartRepository;

  UpdateCartQuantityUseCase({required this.cartRepository});
  @override
  Future<Either<Failure, void>> call(
      {required String param, String quantity = '1'}) {
    cartRepository.updateQuantity(productId: param, quantity: quantity);
    return Future.value(right(null));
  }
}
