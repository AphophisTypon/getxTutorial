
import 'dart:convert';
class Product {
    final int id;
    final String name;
    final String description;
    final double price;
    final double rate;
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
  });

  bool isFavorite = false;

  Map<String, dynamic> toMap() {
    return {
      "Product ID" : id,
      "Name" : name,
      "Description" : description,
      "Price" : price,
      "Rating Avg" : rate,
    };
  }

  // factory Product.fromList(String source){
  //   var data = json.decode(source);
  //   data.map((e){
  //     print(e);
  //   });
  //   return Product.fromMap({'':''});
  // }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map["Product ID"]?.toInt() ?? 0,
      name: map['Name'] ?? '',
      description: map['Description'] ?? '',
      price: map["Price"]?.toDouble() ?? 0.0,
      rate: map['Rating Avg']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, price: $price, rate: $rate)';
  }
}
