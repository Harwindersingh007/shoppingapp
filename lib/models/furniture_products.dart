// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FurnitureModel {
  static List<FurnitureItem> Furniture = [];
}

class FurnitureItem {
  final int id;
  final int price;
  final String desc;
  final String image;

  FurnitureItem(
    this.id,
    this.price,
    this.desc,
    this.image,
  );

  FurnitureItem copyWith({
    int? id,
    int? price,
    String? desc,
    String? image,
  }) {
    return FurnitureItem(
      id ?? this.id,
      price ?? this.price,
      desc ?? this.desc,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'price': price,
      'desc': desc,
      'image': image,
    };
  }

  factory FurnitureItem.fromMap(Map<String, dynamic> map) {
    return FurnitureItem(
      map['id'] as int,
      map['price'] as int,
      map['desc'] as String,
      map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FurnitureItem.fromJson(String source) =>
      FurnitureItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FurnitureItem(id: $id, price: $price, desc: $desc, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FurnitureItem &&
        other.id == id &&
        other.price == price &&
        other.desc == desc &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^ price.hashCode ^ desc.hashCode ^ image.hashCode;
  }
}
