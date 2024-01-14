import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem({
    super.key,
    required this.groceryItem,
  });

  final GroceryItem groceryItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        groceryItem.category.color.withOpacity(0.95),
                        groceryItem.category.color.withOpacity(0.55),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Text(groceryItem.name),
                const Spacer(),
                Text(groceryItem.quantity.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
