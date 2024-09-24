import 'package:comatecs/features/home/presentaion/cubits/fetch_specific_item_cubit/fetch_specific_item_cubit.dart';
import 'package:comatecs/features/home/presentaion/cubits/home_counter_cubit/counter_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/item_detail_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailView extends StatelessWidget {
  const ItemDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider<CounterCubit>(
              create: (context) => CounterCubit(),
            ),
          ],
          child: BlocBuilder<FetchSpecificItemCubit, FetchSpecificItemState>(
            builder: (context, state) {
              if (state is FetchSpecificItemSuccess) {
                return ItemDetailViewBody(
                  itemEntity: state.itemEntity,
                );
              } else if (state is FetchSpecificItemFailure) {
                return Center(child: Text(state.errorMessage));
              } else if (state is FetchSpecificItemLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return const Center(
                  child: Text('حدث خطأ حاول لاحقا'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
