import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_form_field.dart';
import 'package:comatecs/features/home/presentaion/cubits/search_items/search_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomTextFieldSearchBuilder extends StatelessWidget {
  const CustomTextFieldSearchBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onFieldSubmitted: (value) {
        BlocProvider.of<SearchItemsCubit>(context).searchItems(name: value);

        context.push(AppRoutes.searchedItemsView);
      },
      hintText: "ابحث عن اسم المنتج",
    );
  }
}
