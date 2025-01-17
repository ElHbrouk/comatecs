part of 'update_quantity_cubit.dart';

@immutable
sealed class UpdateQuantityState {}

final class UpdateQuantityInitial extends UpdateQuantityState {}

final class UpdateQuantityLoading extends UpdateQuantityState {}

final class UpdateQuantitySuccess extends UpdateQuantityState {}

final class UpdateQuantityFailure extends UpdateQuantityState {
  final String errorMessage;

  UpdateQuantityFailure({required this.errorMessage});
}
