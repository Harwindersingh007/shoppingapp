// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ToyModel {
  static List<ToyItem> Toys = [];
}

class ToyItem {
  final int id;
  final int price;
  final String desc;
  final String image;

  ToyItem(
    this.id,
    this.price,
    this.desc,
    this.image,
  );

  ToyItem copyWith({
    int? id,
    int? price,
    String? desc,
    String? image,
  }) {
    return ToyItem(
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

  factory ToyItem.fromMap(Map<String, dynamic> map) {
    return ToyItem(
      map['id'] as int,
      map['price'] as int,
      map['desc'] as String,
      map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToyItem.fromJson(String source) =>
      ToyItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ToyItem(id: $id, price: $price, desc: $desc, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ToyItem &&
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
