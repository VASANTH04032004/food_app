import 'package:flutter/material.dart';
import 'package:food/screen/product_detail_screen.dart';
import 'package:food/screen/produets_widget.dart';

import '../ module/products.dart';

class FavoritesScreen extends StatefulWidget {
  final Map<int, bool> favorites;
  final List<Product> products;
  final void Function(Product product) toggleFavorite;

  FavoritesScreen({
    required this.favorites,
    required this.products,
    required this.toggleFavorite,
  });

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    // Filter products to show only favorites
    List<Product> favoriteProducts = [];
    for (int i = 0; i < widget.products.length; i++) {
      if (widget.favorites[i] ?? false) {
        favoriteProducts.add(widget.products[i]);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Adjust the padding as needed
        child: ListView.builder(
          itemCount: favoriteProducts.length,
          itemBuilder: (context, index) {
            final product = favoriteProducts[index];
            final isFavorite = widget.favorites[index] ?? false;

            return ProductCard(
              item: product,
              isFavorite: isFavorite,
              onToggleFavorite: () => widget.toggleFavorite(product),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(
                      product: product,
                      isLoggedIn: true, // Assuming true for demo
                      isFavorite: isFavorite,
                      toggleFavorite: () => widget.toggleFavorite(product),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
