class Product {
  final String title;
  final String image;
  final String description;
  final double rating;
  bool isFavorite;

  Product({
    required this.title,
    required this.image,
    required this.description,
    required this.rating,
    this.isFavorite = false,
  });
}

List<Product> foodItems = [
  Product(
    title: 'Tomato Cheese Burger',
    image: 'lib/assets/TomatoBurger.jpg',
    description:
    'Dive into the savory goodness of our Tomato Cheese Burger, a classic favorite with a fresh twist...',
    rating: 4.5,
    isFavorite: false,
  ),
  Product(
    title: 'Classic Cheeseburger',
    image: 'lib/assets/ClassicCheeseburger.jpg',
    description:
    'The Classic Cheeseburger is a timeless favorite that brings together a juicy beef patty...',
    rating: 4.7,
    isFavorite: false,
  ),
  Product(
    title: 'Veggie Burger',
    image: 'lib/assets/VeganBurger.jpg',
    description:
    'Our Veggie Burger is a hearty, plant-based option packed with flavors and textures...',
    rating: 4.3,
    isFavorite: false,
  ),
  Product(
    title: 'Chicken Sandwich',
    image: 'lib/assets/chickenSandwich.jpg',
    description:
    'Enjoy the tender, juicy Chicken Sandwich featuring a breaded chicken breast fillet...',
    rating: 4.6,
    isFavorite: false,
  ),
];

List<Product> fetchFoodItems() {
  return List<Product>.from(foodItems);
}

Product? fetchFoodItemAt(int index) {
  if (index >= 0 && index < foodItems.length) {
    return foodItems[index];
  }
  return null;
}

void updateFoodItem(int index, Product newItem) {
  if (index >= 0 && index < foodItems.length) {
    foodItems[index] = newItem;
  }
}

void deleteFoodItem(int index) {
  if (index >= 0 && index < foodItems.length) {
    foodItems.removeAt(index);
  }
}
