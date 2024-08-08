import 'package:flutter/material.dart';
import '../ module/products.dart';
import 'foodItems_screen.dart';

class CategoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Fruits', 'icon': Icons.apple, 'color': Colors.red},
    {'name': 'Vegetables', 'icon': Icons.eco, 'color': Colors.green},
    {'name': 'Meat', 'icon': Icons.set_meal, 'color': Colors.brown},
    {'name': 'Dairy', 'icon': Icons.local_drink, 'color': Colors.blue},
    {'name': 'Grains', 'icon': Icons.rice_bowl, 'color': Colors.yellow},
    {'name': 'Sweets', 'icon': Icons.cake, 'color': Colors.pink},
    {'name': 'Beverages', 'icon': Icons.local_cafe, 'color': Colors.orange},
    {'name': 'Seafood', 'icon': Icons.sailing, 'color': Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Categories',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            color: category['color'].withOpacity(0.7),
            child: InkWell(
              onTap: () {
                List<Product> filteredItems = foodItems.where((item) => item.category == category['name']).toList();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodItemsScreen(
                      categoryName: category['name'],
                      foodItems: filteredItems,
                    ),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category['icon'], size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text(
                    category['name'],
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
