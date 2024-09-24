import 'package:comatecs/constants.dart';
import 'package:comatecs/core/utils/functions/custom_alert_dialog.dart';
import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/core/utils/widgets/custom_alert_dialog_widget.dart';
import 'package:comatecs/core/utils/widgets/custom_icon_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/cart/presentaion/cubits/add_and_remove_from_cart/add_and_remove_from_cart_cubit.dart';
import 'package:comatecs/features/cart/presentaion/cubits/fetch_cart_items/fetch_cart_items_cubit.dart';
import 'package:comatecs/features/cart/presentaion/cubits/update_quantity/update_quantity_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.cartEntity,
  });
  final CartEntity cartEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 16),
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: kHorizontalPadding),
      height: 140,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey[300]!,
      )),
      child: Row(
        children: [
          Image.network(
            height: 80,
            cartEntity.item.itemImage,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: kHorizontalPadding,
                ),
                child: Text(
                  cartEntity.item.itemName,
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              BlocBuilder<UpdateQuantityCubit, UpdateQuantityState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      CustomIconButton(
                        onPressed: () async {
                          if (cartEntity.itemCartQuantity > 1) {
                            BlocProvider.of<UpdateQuantityCubit>(context)
                                .decrementQuantity(
                              productId: cartEntity.cartItemId.toString(),
                              quantity: cartEntity.itemCartQuantity,
                            );
                            await Future.delayed(Durations.medium1);
                            BlocProvider.of<FetchCartItemsCubit>(context)
                                .fetchCartItems();
                          } else {
                            customAlertDialog(
                              context: context,
                              child: CustomAlertDialogWidget(
                                title: 'حذف المنتج من السلة',
                                content:
                                    'هل أنت متأكد من إزالة هذا المنتج من السلة؟',
                                textRightButton: 'حذف',
                                onPressedRightButtom: () async {
                                  BlocProvider.of<AddAndRemoveFromCartCubit>(
                                          context)
                                      .removeFromCart(
                                    productId: cartEntity.cartItemId.toString(),
                                  );
                                  await Future.delayed(Durations.medium1);
                                  BlocProvider.of<FetchCartItemsCubit>(context)
                                      .fetchCartItems();

                                  Navigator.pop(context);
                                },
                              ),
                            );
                          }
                        },
                        icon: FontAwesomeIcons.minus,
                        color: false,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          top: 5.0,
                          start: 8.0,
                          end: 8.0,
                        ),
                        child: Text(
                          '${cartEntity.itemCartQuantity}',
                          style: AppFonts.bold14.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        onPressed: () async {
                          if (cartEntity.item.itemQuantity >
                              cartEntity.itemCartQuantity) {
                            BlocProvider.of<UpdateQuantityCubit>(context)
                                .incrementQuantity(
                              productId: cartEntity.cartItemId.toString(),
                              quantity: cartEntity.itemCartQuantity,
                            );
                            await Future.delayed(Durations.medium2);
                            BlocProvider.of<FetchCartItemsCubit>(context)
                                .fetchCartItems();
                          } else {
                            buildErrorSnackBar(
                                context, 'عذرا لا يمكنك تحرير الكمية المتاحة');
                          }
                        },
                        icon: FontAwesomeIcons.plus,
                        color: true,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Container(
                alignment: AlignmentDirectional.centerEnd,
                width: 80,
                margin: const EdgeInsetsDirectional.only(
                  top: 18.0,
                  bottom: 18.0,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    customAlertDialog(
                      context: context,
                      child: CustomAlertDialogWidget(
                        title: 'حذف المنتج من السلة',
                        content: 'هل أنت متأكد من إزالة هذا المنتج من السلة؟',
                        textRightButton: 'حذف',
                        onPressedRightButtom: () async {
                          BlocProvider.of<AddAndRemoveFromCartCubit>(context)
                              .removeFromCart(
                            productId: cartEntity.cartItemId.toString(),
                          );
                          Navigator.of(context).pop();
                          await Future.delayed(Durations.medium1);
                          BlocProvider.of<FetchCartItemsCubit>(context)
                              .fetchCartItems();
                        },
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    ImageAssets.delete,
                  ),
                ),
              ),
              Text(
                '${cartEntity.item.itemPrice * cartEntity.itemCartQuantity}',
                style: AppFonts.bold14,
              )
            ],
          ),
        ],
      ),
    );
  }
}
