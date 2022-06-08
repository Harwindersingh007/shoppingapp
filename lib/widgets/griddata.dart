// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 238, 249, 255),
        height: 900,
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
