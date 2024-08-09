import 'package:flutter/material.dart';
import 'package:food/screen/produets_widget.dart';
import 'package:provider/provider.dart';
import '../ module/products.dart';
import '../product_provider.dart';
import 'product_detail_screen.dart';


class FavoritesScreen extends StatelessWidget {
  final void Function(Product product) toggleFavorite;
  final bool isLoggedIn;

  FavoritesScreen({
    required this.toggleFavorite,
    required this.isLoggedIn,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productProvider, _) {
        final favoriteProducts = productProvider.products.where((p) => p.isFavorite).toList();

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
            padding: EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: favoriteProducts.length,
              itemBuilder: (context, index) {
                final product = favoriteProducts[index];
                return ProductCard(
                  item: product,
                  isFavorite: true,
                  onToggleFavorite: () {
                    productProvider.toggleFavorite(product);
                  },
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ProductDetailScreen.routeName,
                      arguments: {
                        'product': product,
                        'isLoggedIn': isLoggedIn, // Pass the isLoggedIn value here
                        'isFavorite': true,
                        'toggleFavorite': () => productProvider.toggleFavorite(product),
                      },
                    );
                  },
                  isLoggedIn: isLoggedIn, // Pass the isLoggedIn value here
                );
              },
            ),
          ),
        );
      },
    );
  }
}
