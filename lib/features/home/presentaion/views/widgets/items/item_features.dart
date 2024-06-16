import 'package:flutter/material.dart';

class ItemFeatures extends StatelessWidget {
  const ItemFeatures({
    super.key,
  });
  final List<String> features = const [
    " 800N.M عزم دوران عالية ، ستبليس سرعة تغيير التبديل.",
    "مفتاح كهربائي قوي ومفك البراغي ، قوة فائقة.",
    "التنغستن الصلب رمح ، صلابة عالية ومقاومة التآكل."
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'مميزات',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Colors.black,
              ),
        ),
        ListView.builder(
          itemCount: features.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => Text(
            textAlign: TextAlign.end,
            features[index],
          ),
        ),
      ],
    );
  }
}
