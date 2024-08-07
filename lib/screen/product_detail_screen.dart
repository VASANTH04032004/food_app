// product_detail_screen.dart

import 'package:flutter/material.dart';
import 'package:food/screen/side_menu.dart';

import '../ module/products.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  final bool isLoggedIn;
  late bool isFavorite;
  final void Function() toggleFavorite;

  ProductDetailScreen({
    required this.product,
    required this.isLoggedIn,
    required this.isFavorite,
    required this.toggleFavorite,
  });

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: isMenuOpen ? MediaQuery.of(context).size.width * 0.7 : 0,
            right: isMenuOpen ? -MediaQuery.of(context).size.width * 0.7 : 0,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                if (isMenuOpen) toggleMenu();
              },
              child: Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  title: Text(
                    widget.product.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: Colors.orange,
                  actions: [
                    GestureDetector(
                      onTap: () {
                        widget.toggleFavorite(); // Toggle favorite status
                        setState(() {
                          widget.isFavorite = !widget.isFavorite;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          widget.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: widget.isFavorite ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                body: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).padding.top),
                      GestureDetector(
                        onTap: () {
                          // Implement any onTap logic for the image if needed
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 250.0,
                          width: double.infinity,
                          color: Colors.orange[100],
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              widget.product.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow[800]),
                          SizedBox(width: 4.0),
                          Text(
                            widget.product.rating.toString(),
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: EdgeInsets.only(left: 0.0, right: 0.0),
                        child: Text(
                          widget.product.description,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 32.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: isMenuOpen ? 0 : -MediaQuery.of(context).size.width * 0.7,
            top: 0,
            bottom: 0,
            child: SideMenuScreen(
              onClose: toggleMenu,
              isLoggedIn: widget.isLoggedIn,
            ),
          ),
        ],
      ),
    );
  }
}
