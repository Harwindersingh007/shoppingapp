// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BagModel {
  static List<BagItem> Bags = [];
}

class BagItem {
  final int id;
  final int price;
  final String desc;
  final String image;

  BagItem(
    this.id,
    this.price,
    this.desc,
    this.image,
  );

  BagItem copyWith({
    int? id,
    int? price,
    String? desc,
    String? image,
  }) {
    return BagItem(
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

  factory BagItem.fromMap(Map<String, dynamic> map) {
    return BagItem(
      map['id'] as int,
      map['price'] as int,
      map['desc'] as String,
      map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BagItem.fromJson(String source) =>
      BagItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BagItem(id: $id, price: $price, desc: $desc, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BagItem &&
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
