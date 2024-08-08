class Product {
  final String title;
  final String image;
  final String description;
  final double rating;
  bool isFavorite;
  final String category; // Added category property

  Product({
    required this.title,
    required this.image,
    required this.description,
    required this.rating,
    this.isFavorite = false,
    required this.category, // Initialize category
  });
  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}

List<Product> foodItems = [
  // Meat Category
  Product(
    title: 'Tomato Cheese Burger',
    image: 'lib/assets/TomatoBurger.jpg',
    description: 'Dive into the savory goodness of our Tomato Cheese Burger, a classic favorite with a fresh twist...',
    rating: 4.5,
    isFavorite: false,
    category: 'Meat',
  ),
  Product(
    title: 'Classic Cheeseburger',
    image: 'lib/assets/ClassicCheeseburger.jpg',
    description: 'The Classic Cheeseburger is a timeless favorite that brings together a juicy beef patty...',
    rating: 4.7,
    isFavorite: false,
    category: 'Meat',
  ),
  Product(
    title: 'Chicken Sandwich',
    image: 'lib/assets/chickenSandwich.jpg',
    description: 'Enjoy the tender, juicy Chicken Sandwich featuring a breaded chicken breast fillet...',
    rating: 4.6,
    isFavorite: false,
    category: 'Meat',
  ),

  // Vegetables Category
  Product(
    title: 'Veggie Burger',
    image: 'lib/assets/VeganBurger.jpg',
    description: 'Our Veggie Burger is a hearty, plant-based option packed with flavors and textures...',
    rating: 4.3,
    isFavorite: false,
    category: 'Vegetables',
  ),
  Product(
    title: 'Garden Salad',
    image: 'lib/assets/GardenSalad.jpg',
    description: 'A fresh and colorful garden salad, loaded with a variety of crisp vegetables...',
    rating: 4.2,
    isFavorite: false,
    category: 'Vegetables',
  ),
  Product(
    title: 'Roasted Vegetables',
    image: 'lib/assets/RoastedVegetables.jpg',
    description: 'A medley of roasted vegetables with a delicious blend of herbs and spices...',
    rating: 4.4,
    isFavorite: false,
    category: 'Vegetables',
  ),

  // Fruits Category
  Product(
    title: 'Apple Pie',
    image: 'lib/assets/ApplePie.jpg',
    description: 'A classic apple pie with a flaky crust and sweet, spiced apples...',
    rating: 4.6,
    isFavorite: false,
    category: 'Fruits',
  ),
  Product(
    title: 'Fruit Salad',
    image: 'lib/assets/FruitSalad.jpg',
    description: 'A refreshing mix of seasonal fruits, perfect for a healthy snack...',
    rating: 4.5,
    isFavorite: false,
    category: 'Fruits',
  ),
  Product(
    title: 'Mango Smoothie',
    image: 'lib/assets/MangoSmoothie.jpg',
    description: 'A creamy and delicious mango smoothie made with fresh mangoes...',
    rating: 4.7,
    isFavorite: false,
    category: 'Fruits',
  ),

  // Dairy Category
  Product(
    title: 'Cheddar Cheese',
    image: 'lib/assets/CheddarCheese.jpg',
    description: 'Sharp and tangy cheddar cheese, perfect for sandwiches and snacking...',
    rating: 4.8,
    isFavorite: false,
    category: 'Dairy',
  ),
  Product(
    title: 'Greek Yogurt',
    image: 'lib/assets/GreekYogurt.jpg',
    description: 'Rich and creamy Greek yogurt, ideal for breakfast or as a healthy snack...',
    rating: 4.6,
    isFavorite: false,
    category: 'Dairy',
  ),
  Product(
    title: 'Milk',
    image: 'lib/assets/Milk.jpg',
    description: 'Fresh, wholesome milk that’s perfect for drinking or cooking...',
    rating: 4.5,
    isFavorite: false,
    category: 'Dairy',
  ),

  // Grains Category
  Product(
    title: 'Brown Rice',
    image: 'lib/assets/BrownRice.jpg',
    description: 'Nutritious brown rice, a great base for a variety of dishes...',
    rating: 4.3,
    isFavorite: false,
    category: 'Grains',
  ),
  Product(
    title: 'Quinoa',
    image: 'lib/assets/Quinoa.jpg',
    description: 'Protein-rich quinoa, perfect for salads and side dishes...',
    rating: 4.6,
    isFavorite: false,
    category: 'Grains',
  ),
  Product(
    title: 'Oats',
    image: 'lib/assets/Oats.jpg',
    description: 'Healthy oats, ideal for breakfast or baking...',
    rating: 4.4,
    isFavorite: false,
    category: 'Grains',
  ),

  // Sweets Category
  Product(
    title: 'Chocolate Cake',
    image: 'lib/assets/ChocolateCake.jpg',
    description: 'Rich and indulgent chocolate cake, perfect for dessert...',
    rating: 4.7,
    isFavorite: false,
    category: 'Sweets',
  ),
  Product(
    title: 'Cupcakes',
    image: 'lib/assets/Cupcakes.jpg',
    description: 'Delicious cupcakes with a variety of flavors and frosting...',
    rating: 4.5,
    isFavorite: false,
    category: 'Sweets',
  ),
  Product(
    title: 'Macarons',
    image: 'lib/assets/Macarons.jpg',
    description: 'Colorful and delicate macarons with assorted flavors...',
    rating: 4.6,
    isFavorite: false,
    category: 'Sweets',
  ),

  // Beverages Category
  Product(
    title: 'Green Tea',
    image: 'lib/assets/GreenTea.jpg',
    description: 'Refreshing green tea with a delicate flavor...',
    rating: 4.4,
    isFavorite: false,
    category: 'Beverages',
  ),
  Product(
    title: 'Coffee',
    image: 'lib/assets/Coffee.jpg',
    description: 'Rich and aromatic coffee, perfect for a morning pick-me-up...',
    rating: 4.7,
    isFavorite: false,
    category: 'Beverages',
  ),
  Product(
    title: 'Orange Juice',
    image: 'lib/assets/OrangeJuice.jpg',
    description: 'Freshly squeezed orange juice, full of citrus flavor...',
    rating: 4.6,
    isFavorite: false,
    category: 'Beverages',
  ),

  // Seafood Category
  Product(
    title: 'Grilled Salmon',
    image: 'lib/assets/GrilledSalmon.jpg',
    description: 'Delicious grilled salmon, rich in flavor and omega-3 fatty acids...',
    rating: 4.8,
    isFavorite: false,
    category: 'Seafood',
  ),
  Product(
    title: 'Shrimp Cocktail',
    image: 'lib/assets/ShrimpCocktail.jpg',
    description: 'Classic shrimp cocktail with a tangy cocktail sauce...',
    rating: 4.7,
    isFavorite: false,
    category: 'Seafood',
  ),
  Product(
    title: 'Tuna Sashimi',
    image: 'lib/assets/TunaSashimi.jpg',
    description: 'Fresh and flavorful tuna sashimi, perfect for sushi lovers...',
    rating: 4.9,
    isFavorite: false,
    category: 'Seafood',
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
