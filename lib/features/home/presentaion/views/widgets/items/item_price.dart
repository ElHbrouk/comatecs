import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/core/utils/widgets/custom_icon_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/presentaion/cubits/home_counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
    required this.itemEntity,
  });
  final ItemEntity itemEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          itemEntity.itemName,
          style: AppFonts.bold16.copyWith(
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  itemEntity.itemPrice.toString(),
                  style: AppFonts.bold16,
                ),
                const Padding(
                  padding:
                      EdgeInsetsDirectional.only(start: 8.0, end: 8.0, top: 5),
                  child: Text(
                    '16.00 JOD',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 8.0, end: 8.0, top: 6),
                  child: Text(
                    '-50%',
                    style: AppFonts.regular12.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Row(
                  children: [
                    CustomIconButton(
                      color: true,
                      onPressed: () {
                        if (itemEntity.itemQuantity > state) {
                          BlocProvider.of<CounterCubit>(context).increment();
                        } else {
                          buildErrorSnackBar(
                              context, 'عذرا لا يمكنك تحرير الكمية المتاحة');
                        }
                      },
                      icon: FontAwesomeIcons.plus,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 5.0,
                        right: 5.0,
                      ),
                      child: Text(
                        '$state',
                        style: AppFonts.bold16,
                      ),
                    ),
                    CustomIconButton(
                      color: false,
                      onPressed: () {
                        if (state > 1) {
                          BlocProvider.of<CounterCubit>(context).decrement();
                        } else {
                          buildErrorSnackBar(
                              context, 'عذرا لا يمكنك تحرير الكمية المتاحة');
                        }
                      },
                      icon: FontAwesomeIcons.minus,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
