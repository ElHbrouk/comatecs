import 'package:flutter/material.dart';

class ItemDetailsInfo extends StatelessWidget {
  const ItemDetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
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
            // textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            '2 in1 18V 800N.m. مفك براغي كهربائي 1/2 "وجع 1/4" من الليثيوم بدون فرش بديل لبطارية ماكيت',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey,
                ),
          ),
        ),
      ],
    );
  }
}
