import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:shopping_app/homewidgets.dart/homeheader.dart';
import 'package:shopping_app/models/bag_products.dart';

import '../models/listproduct.dart';
import '../widgets/carousel.dart';
import '../widgets/listitems.dart';

class BagList extends StatefulWidget {
  const BagList({Key? key}) : super(key: key);

  @override
  State<BagList> createState() => _BagListState();
}

class _BagListState extends State<BagList> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var itemjson = await rootBundle.loadString("assets/files/list7.json");
    final decodedData = jsonDecode(itemjson);
    var itemData = decodedData["Bags"];

    BagModel.Bags = List.from(itemData)
        .map<BagItem>((item) => BagItem.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Container(
            height: 50,
            child: ListTile(
              tileColor: Color.fromARGB(255, 238, 249, 255),
              leading: IconButton(
                  onPressed: () {}, icon: Icon(FontAwesomeIcons.bars)),
              trailing: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/harry.JPG"),
              ),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 238, 249, 255),
            height: 50,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Container(
                    height: 34,
                    width: 310,
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
                    width: 4,
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
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Container(
              color: Color.fromARGB(255, 238, 249, 255),
              child: Text(
                "BAGS",
                style: TextStyle(
                    backgroundColor: Color.fromARGB(255, 238, 249, 255),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 53, 82, 230)),
              ),
            ),
          ),
          BagsItems()
        ],
      ),
    );
  }
}

class BagsItems extends StatelessWidget {
  const BagsItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 238, 249, 255),
      child: Column(
        children: [
          // ignore: unnecessary_null_comparison
          (BagModel.Bags != null && BagModel.Bags.isNotEmpty)
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: BagModel.Bags.length,
                  itemBuilder: ((context, index) {
                    final item = BagModel.Bags[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(
                              255,
                              241,
                              241,
                              241,
                            )),
                        height: 250,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(18),
                              height: 220,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(item.image),
                                      fit: BoxFit.cover),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item.desc,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 6, 6)),
                                ),
                                RatingBar.builder(
                                    initialRating: 4,
                                    itemSize: 23,
                                    itemBuilder: (context, _) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      );
                                    },
                                    onRatingUpdate: (rating) {}),
                                Text(
                                  "\$ ${item.price}".toString(),
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 3, 3, 3)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }))
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: CircularProgressIndicator(),
                  ),
                )
        ],
      ),
    );
  }
}
