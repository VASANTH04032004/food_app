import 'package:flutter/material.dart';
import 'package:food/screen/product_detail_screen.dart';
import 'package:food/screen/produets_widget.dart';
import 'package:food/screen/side_menu.dart';
import 'package:provider/provider.dart';
import '../product_provider.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  final bool isLoggedIn;

  HomeScreen({required this.isLoggedIn});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
    _pageController.animateToPage(
      _currentPageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentPageIndex == 0
          ? AppBar(
        title: Text('Home'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      )
          : null,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: [
          Consumer<ProductProvider>(
            builder: (context, productProvider, _) {
              final products = productProvider.products;
              return ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  final isFavorite = product.isFavorite;

                  return ProductCard(
                    item: product,
                    isFavorite: isFavorite,
                    onToggleFavorite: () {
                      productProvider.toggleFavorite(product);
                    },
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductDetailScreen.routeName,
                        arguments: {
                          'product': product,
                          'isLoggedIn': widget.isLoggedIn,
                          'isFavorite': isFavorite,
                          'toggleFavorite': () {
                            productProvider.toggleFavorite(product);
                          },
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
          FavoritesScreen(
            // Pass the ProductProvider to FavoritesScreen
            toggleFavorite: (product) {
              context.read<ProductProvider>().toggleFavorite(product);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: SideMenuScreen(
          onClose: () {
            Navigator.pop(context);
          },
          isLoggedIn: widget.isLoggedIn,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: _currentPageIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
