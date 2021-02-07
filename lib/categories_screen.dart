import 'package:flutter/material.dart';
import './dummy_data.dart';
import './categoryItem.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Planet Based")),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategoryItem(catData.title, catData.color, catData.id))
            .toList(),
      ),
    );
  }
}
