import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_icon_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ItemDetailViewBody extends StatelessWidget {
  const ItemDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'الاسم التجاري الشائع ',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.black,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomIconButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.plus,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 7.0, left: 3.0, right: 3.0),
                    child: Text(
                      '50',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  CustomIconButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.minus,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 8.0, end: 8.0, top: 6),
                    child: Text(
                      '-50%',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Colors.red,
                              ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 8.0, end: 8.0, top: 5),
                    child: Text(
                      '16.00 JOD',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                  Text(
                    '16.00 JOD',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
       SizedBox(height: 24,),
       
          Text(
            'تفاصيل المنتج',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.black,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 10),
            child: Text(
              maxLines: 2,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              '2 in1 18V 800N.m. مفك براغي كهربائي 1/2 "وجع 1/4" من الليثيوم بدون فرش بديل لبطارية ماكيت',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
