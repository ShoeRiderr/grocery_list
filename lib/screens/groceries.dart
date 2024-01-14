import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/grocery_list_item.dart';

class GroceriesScreen extends StatelessWidget {
  const GroceriesScreen({
    super.key,
    required this.groceryList,
  });

  final List<GroceryItem> groceryList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryList.length,
      itemBuilder: (ctx, index) => GroceryListItem(
        groceryItem: groceryList[index],
      ),
    );
  }
}
