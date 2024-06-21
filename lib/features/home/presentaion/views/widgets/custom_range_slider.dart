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
        values.start.toInt().toString(), values.end.toInt().toString());
    return RangeSlider(
      max: 6000,
      divisions: 15,
      labels: labels,
      values: values,
      onChanged: (newValue) {
        setState(() {
          values = newValue;
        });
      },
    );
  }
}
