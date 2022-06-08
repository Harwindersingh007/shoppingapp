// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ListModel {
  static List<ListItem> Products = [];
}

class ListItem {
  final int id;
  final String name;
  final String image;

  ListItem(
    this.id,
    this.name,
    this.image,
  );

  ListItem copyWith({
    int? id,
    String? name,
    String? image,
  }) {
    return ListItem(
      id ?? this.id,
      name ?? this.name,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory ListItem.fromMap(Map<String, dynamic> map) {
    return ListItem(
      map['id'] as int,
      map['name'] as String,
      map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListItem.fromJson(String source) =>
      ListItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ListItem(id: $id, name: $name, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListItem &&
        other.id == id &&
        other.name == name &&
        other.image == image;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ image.hashCode;
}
