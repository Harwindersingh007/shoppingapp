// ignore_for_file: public_member_api_docs, sort_constructors_first

// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_app/utils/routes.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 238, 249, 255),
        height: 850,
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 3 / 4),
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.toypageroute);
                    },
                    child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                image: AssetImage("assets/images/teddy.JPG"),
                                fit: BoxFit.cover))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    color: Color.fromARGB(255, 238, 249, 255),
                    child: Text(
                      "TOYS",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 128, 0)),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.jewellerypage);
                    },
                    child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/jewellery.png")))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    color: Color.fromARGB(255, 238, 249, 255),
                    child: Text(
                      "JEWELLERY",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 128, 0)),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.furniturepage);
                    },
                    child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/almirah.png")))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    color: Color.fromARGB(255, 238, 249, 255),
                    child: Text(
                      "FURNITURE",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 128, 0)),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.giftpage);
                    },
                    child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/gift.png")))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    color: Color.fromARGB(255, 238, 249, 255),
                    child: Text(
                      "GIFTS",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 128, 0)),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.mattresspage);
                    },
                    child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/bedroom.png")))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    color: Color.fromARGB(255, 238, 249, 255),
                    child: Text(
                      "MATTRESS",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 128, 0)),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.bagspage);
                    },
                    child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/bags.png")))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    color: Color.fromARGB(255, 238, 249, 255),
                    child: Text(
                      "BAGS",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 128, 0)),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
