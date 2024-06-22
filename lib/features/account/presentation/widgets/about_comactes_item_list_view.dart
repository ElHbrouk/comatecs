import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/data/models/about_comactes_model.dart';
import 'package:flutter/material.dart';

class AboutComactesItemListView extends StatelessWidget {
  const AboutComactesItemListView({
    super.key,
    required this.aboutComactesItems,
  });

  final List<AboutComactesModel> aboutComactesItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: aboutComactesItems.length,
      itemBuilder: (context, index) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            aboutComactesItems[index].title,
            style: AppFonts.regular14.copyWith(
              color: Colors.black,
            ),
          ),
          Text(
            aboutComactesItems[index].body,
            style: AppFonts.regular14.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16,),
        ],
      );
    });
  }
}
