import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/widgets/first_tabpage.dart';
import 'package:shopping_app/widgets/second_tabpage.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return SafeArea(
      child: Material(
          child: Column(
        children: [
          Container(
            height: 50,
            child: ListTile(
              tileColor: Colors.white,
              leading: IconButton(
                  onPressed: () {}, icon: Icon(FontAwesomeIcons.bars)),
              trailing: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/harry.JPG"),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 50,
            width: 450,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
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
            padding: const EdgeInsets.only(right: 170),
            child: Container(
              width: 350,
              child: TabBar(
                  indicatorWeight: 2,
                  indicatorPadding: EdgeInsets.only(right: 20),
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  controller: tabController,
                  tabs: [
                    Tab(
                      text: "Cart",
                    ),
                    Tab(
                      text: "Buy Again",
                    )
                  ]),
            ),
          ),
          Expanded(
            child: TabBarView(
                controller: tabController, children: [Cart(), BuyAgain()]),
          )
        ],
      )),
    );
  }
}
