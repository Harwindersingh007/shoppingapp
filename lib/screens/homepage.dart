import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/homewidgets.dart/homeheader.dart';
import 'package:shopping_app/models/listproduct.dart';
import 'package:shopping_app/widgets/griddata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var itemjson = await rootBundle.loadString("assets/files/list.json");
    final decodedData = jsonDecode(itemjson);
    var itemData = decodedData["Products"];

    ListModel.Products = List.from(itemData)
        .map<ListItem>((item) => ListItem.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          HomeHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              color: Color.fromARGB(255, 238, 249, 255),
              height: 100,
              child: Text(
                "Shop \nProducts",
                style: TextStyle(
                    fontSize: 35, color: Color.fromARGB(255, 17, 99, 170)),
              ),
            ),
          ),
          GridItem()
        ],
      ),
    );
  }
}
