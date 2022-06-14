import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/models/listproduct.dart';
import 'package:shopping_app/widgets/griddata.dart';

import '../widgets/carousel.dart';
import '../widgets/listitems.dart';

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
          Container(
            height: 50,
            child: ListTile(
              tileColor: Color.fromARGB(255, 238, 249, 255),
              title: Text(
                "SWSOFTTECH",
                style: TextStyle(
                    color: Color.fromARGB(255, 4, 96, 171),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              trailing: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/harry.JPG"),
              ),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 238, 249, 255),
            height: 50,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    height: 34,
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(3),
                          // ignore: deprecated_member_use
                          prefixIcon: Icon(
                            // ignore: deprecated_member_use
                            FontAwesomeIcons.search,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.qrcode,
                            color: Colors.grey,
                          ),
                          hintText: "Search",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.bell,
                        size: 20,
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              color: Color.fromARGB(255, 238, 249, 255),
              height: 130,
              child: ListView.separated(
                itemCount: ListModel.Products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductsList(item: ListModel.Products[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 5,
                  );
                },
              ),
            ),
          ),
          Container(
            height: 200,
            color: Color.fromARGB(255, 238, 249, 255),
            child: CarouselItems(),
          ),
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
