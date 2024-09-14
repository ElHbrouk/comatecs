import 'package:comatecs/features/home/presentaion/views/widgets/items/searched_items_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchedItemsView extends StatelessWidget {
  const SearchedItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            FontAwesomeIcons.chevronRight,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SearchedItemsViewBody(),
      ),
    );
  }
}
