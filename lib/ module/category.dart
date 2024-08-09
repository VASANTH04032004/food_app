import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon;
  final Color color;

  Category({
    required this.name,
    required this.icon,
    required this.color,
  });
}

final List<Category> categories = [
  Category(
    name: 'Fruits',
    icon: Icons.apple,
    color: Colors.red,
  ),
  Category(
    name: 'Vegetables',
    icon: Icons.eco,
    color: Colors.green,
  ),
  Category(
    name: 'Meat',
    icon: Icons.set_meal,
    color: Colors.brown,
  ),
  Category(
    name: 'Dairy',
    icon: Icons.local_drink,
    color: Colors.blue,
  ),
  Category(
    name: 'Grains',
    icon: Icons.rice_bowl,
    color: Colors.yellow,
  ),
  Category(
    name: 'Sweets',
    icon: Icons.cake,
    color: Colors.pink,
  ),
  Category(
    name: 'Beverages',
    icon: Icons.local_cafe,
    color: Colors.orange,
  ),
  Category(
    name: 'Seafood',
    icon: Icons.sailing,
    color: Colors.teal,
  ),
];
