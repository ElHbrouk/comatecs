import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({
    super.key,
    required this.onChanged,
  });

  final Function(RangeValues) onChanged;
  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues currentValues = const RangeValues(0, 10000);

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      currentValues.start.toInt().toString(),
      currentValues.end.toInt().toString(),
    );
    return Column(
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
          max: 100000,
          divisions: 15,
          labels: labels,
          values: currentValues,
          onChanged: (newValue) {
            setState(() {
              currentValues = newValue;
            });
            widget.onChanged(newValue);
          },
        ),
      ],
    );
  }
}
