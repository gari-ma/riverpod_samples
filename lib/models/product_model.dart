class Coffee {
  final int id;
  final double rating;
  final String title;
  final String subtitle;
  final String image;
  final double price;
  final String categoryTitle;

  Coffee({
    required this.id,
    required this.rating,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.categoryTitle,
  });

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      id: json['id'] as int,
      rating: json['rating'] as double,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      price: json['price'] as double,
      categoryTitle: json['categoryTitle'] as String,
    );
  }
}
