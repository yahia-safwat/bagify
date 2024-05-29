import 'dart:ui';

class ProductModel {
  final int id;
  final String title;
  final int price;
  final int size;
  final String description;
  final String image;
  final Color color;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.size,
    required this.description,
    required this.image,
    required this.color,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      size: json['size'],
      description: json['description'],
      image: json['image'],
      color: Color(json['color']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'size': size,
      'description': description,
      'image': image,
      'color': color.value,
    };
  }
}
