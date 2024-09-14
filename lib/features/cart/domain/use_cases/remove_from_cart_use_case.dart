import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';

class RemoveFromCartUseCase extends UseCaseWithParam<void, String> {
  final CartRepository cartRepository;

  RemoveFromCartUseCase({
    required this.cartRepository,
  });
  @override
  Future<Either<Failure, void>> call({required String param}) {
    cartRepository.removeFromCart(productId: param);
    return Future.value(right(null));
  }
}
