import 'package:flutter/material.dart';
import '../widgets/category_item.dart';

import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // As it is a screen and not a widget, it should have scaffold
      body: GridView(
        // Similar to list view but it places its children like, 2 child next to each other and 2 in next row and so on.
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // Width of the child
          childAspectRatio: 3 / 2, // For 200 width we need 300 height
          crossAxisSpacing: 20, // Spacing between 2 child in same row
          mainAxisSpacing: 20, // Spacing between 2 child in different rews
        ),
      ),
    );
  }
}
