// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartItem {
  final int id;
  final String title;
  final int price;
  final int quantity;
  final String image;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.image,
  });

  CartItem copyWith({
    int? id,
    String? title,
    int? price,
    int? quantity,
    String? image,
  }) {
    return CartItem(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      image: image ?? this.image,
    );
  }
}
