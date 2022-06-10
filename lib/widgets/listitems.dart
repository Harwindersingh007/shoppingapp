// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shopping_app/models/listproduct.dart';

class ProductsList extends StatelessWidget {
  final ListItem item;
  const ProductsList({
    Key? key,
    required this.item,
    // ignore: unnecessary_null_comparison
  })  : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 64,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              image: DecorationImage(image: AssetImage(item.image))),
        ),
        Text(item.name)
      ],
    );
  }
}
