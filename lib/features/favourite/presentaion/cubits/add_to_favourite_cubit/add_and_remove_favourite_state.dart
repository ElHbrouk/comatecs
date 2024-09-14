part of 'add_and_remove_favourite_cubit.dart';

@immutable
sealed class AddAndRemoveFavouriteState {}

final class AddToFavouriteInitial extends AddAndRemoveFavouriteState {}

final class AddToFavouriteLoading extends AddAndRemoveFavouriteState {}

final class AddToFavouriteSuccess extends AddAndRemoveFavouriteState {
  // final bool isAdded;

  // AddToFavouriteSucess({required this.isAdded});
}

final class AddToFavouriteFailure extends AddAndRemoveFavouriteState {
  final String errorMessage;

  AddToFavouriteFailure({required this.errorMessage});
}

final class RemoveFromFavouriteLoading extends AddAndRemoveFavouriteState {}

final class RemoveFromFavouriteSuccess extends AddAndRemoveFavouriteState {}

final class RemoveFromFavouriteFailure extends AddAndRemoveFavouriteState {
  final String errorMessage;
  RemoveFromFavouriteFailure({required this.errorMessage});
}
