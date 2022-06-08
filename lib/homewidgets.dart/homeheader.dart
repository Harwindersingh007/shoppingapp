import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/models/listproduct.dart';
import 'package:shopping_app/widgets/carousel.dart';
import 'package:shopping_app/widgets/listitems.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: 50,
          child: ListTile(
            tileColor: Color.fromARGB(255, 238, 249, 255),
            leading:
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bars)),
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
      ],
    );
  }
}
