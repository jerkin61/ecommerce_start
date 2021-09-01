import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;
  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });
  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isPopular, isRecommended];

  static List<Product> products = [
    Product(
      name: 'Soft Drink 1',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
      price: 7.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink 2',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      price: 6.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink 3',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      price: 5.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink 4',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      price: 3.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink 5',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      price: 4.99,
      isRecommended: true,
      isPopular: false,
    ),
  ];
}
