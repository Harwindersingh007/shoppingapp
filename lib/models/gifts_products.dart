// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GiftModel {
  static List<GiftItem> Gifts = [];
}

class GiftItem {
  final int id;
  final int price;
  final String desc;
  final String image;

  GiftItem(
    this.id,
    this.price,
    this.desc,
    this.image,
  );

  GiftItem copyWith({
    int? id,
    int? price,
    String? desc,
    String? image,
  }) {
    return GiftItem(
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

  factory GiftItem.fromMap(Map<String, dynamic> map) {
    return GiftItem(
      map['id'] as int,
      map['price'] as int,
      map['desc'] as String,
      map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GiftItem.fromJson(String source) =>
      GiftItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GiftItem(id: $id, price: $price, desc: $desc, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GiftItem &&
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
