// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:shopping_app/homewidgets.dart/homeheader.dart';
import 'package:shopping_app/models/listproduct.dart';

class ToysItems extends StatelessWidget {
  final ListItem item;
  const ToysItems({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        shrinkWrap: true,
        children: [HomeHeader(), Image.asset(item.image)],
      ),
    );
  }
}
