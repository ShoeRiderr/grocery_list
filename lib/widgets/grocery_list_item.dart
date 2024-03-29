import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem({
    super.key,
    required this.groceryItem,
    required this.removeGroceryItem,
  });

  final GroceryItem groceryItem;

  final void Function(GroceryItem item) removeGroceryItem; 

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {
        removeGroceryItem(groceryItem);
      },
      direction: DismissDirection.endToStart,
      key: ValueKey(groceryItem.id),
      child: ListTile(
        title: Text(groceryItem.name),
        leading: Container(
          width: 24,
          height: 24,
          color: groceryItem.category.color,
        ),
        trailing: Text(
          groceryItem.quantity.toString(),
        ),
      ),
    );
  }
}
