import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          ListTile(
            leading:
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bars)),
            trailing: CircleAvatar(
              backgroundImage: AssetImage("assets/images/harry.JPG"),
            ),
          ),
          Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        // ignore: deprecated_member_use
                        prefix: Icon(FontAwesomeIcons.search),
                        hintText: "Search",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
