import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildCard1(),
            SizedBox(
              width: 10,
            ),
            buildCard2(),
            SizedBox(
              width: 10,
            ),
            buildCard3(),
            SizedBox(
              width: 10,
            ),
            buildCard4(),
            SizedBox(
              width: 10,
            ),
            buildCard5(),
            SizedBox(
              width: 10,
            ),
            buildCard6()
          ],
        ),
      ),
    );
  }

  Widget buildCard1() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 30,
      width: 55,
    );
  }

  Widget buildCard2() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 30,
      width: 55,
    );
  }

  Widget buildCard3() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 30,
      width: 55,
    );
  }

  Widget buildCard4() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 30,
      width: 55,
    );
  }

  Widget buildCard5() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 30,
      width: 55,
    );
  }

  Widget buildCard6() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 30,
      width: 55,
    );
  }
}
