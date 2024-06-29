import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({
    super.key,
  });
  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues values = const RangeValues(400, 3600);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toInt().toString(),
      values.end.toInt().toString(),
    );
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Text(
              'ميزانية السعر',
              style: AppFonts.regular16.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          RangeSlider(
            max: 6000,
            divisions: 15,
            labels: labels,
            values: values,
            onChanged: (newValue) {
              setState(() {
                values = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
