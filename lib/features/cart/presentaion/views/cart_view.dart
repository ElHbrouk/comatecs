import 'package:comatecs/features/cart/presentaion/cubits/fetch_cart_items/fetch_cart_items_cubit.dart';
import 'package:comatecs/features/cart/presentaion/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCartItemsCubit, FetchCartItemsState>(
      builder: (context, state) {
        if (state is FetchCartItemsSuccess) {
          if (state.items.isEmpty) {
            return const Center(
              child: Text('لا يوجد منتجات في السلة'),
            );
          } else {
            return CartViewBody(
              cartItems: state.items,
            );
          }
        } else if (state is FetchCartItemsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is FetchCartItemsFailure) {
          return Center(
            child: Text(
              state.errorMessage,
            ),
          );
        } else {
          return const Center(
            child: Text('حدث خطأ حاول مرة اخرى'),
          );
        }
      },
    );
  }
}
