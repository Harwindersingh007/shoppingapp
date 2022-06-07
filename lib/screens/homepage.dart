import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/widgets/listitems.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          ListTile(
            tileColor: Colors.amber,
            leading:
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bars)),
            trailing: CircleAvatar(
              backgroundImage: AssetImage("assets/images/harry.JPG"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 270,
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(3),
                          prefixIcon: Icon(FontAwesomeIcons.search),
                          hintText: "Search",
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
          SizedBox(
            height: 8,
          ),
          ListItem()
        ],
      ),
    );
  }
}
