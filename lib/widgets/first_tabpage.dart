import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 238, 249, 255),
        child: Column(
          children: [
            Container(
              height: 40,
              color: Color.fromARGB(255, 213, 210, 210),
              child: Row(
                children: [
                  SizedBox(
                    width: 6,
                  ),
                  Icon(FontAwesomeIcons.locationDot),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Select a location to see product availability")
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
                height: 160,
                width: 230,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3),
                    image: DecorationImage(
                        image: AssetImage("assets/icons/cart.png")))),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your C-Name Basket is empty",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text(
              "Shop Today\'s deals",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign in to your account',
                  style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  fixedSize: Size(380, 50),
                  onPrimary: Color.fromARGB(255, 12, 87, 149),
                  primary: Color.fromARGB(255, 226, 226, 226)),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign up now',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  fixedSize: Size(380, 50),
                  onPrimary: Color.fromARGB(255, 12, 87, 149),
                  primary: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Continue Shopping', style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  fixedSize: Size(380, 50),
                  onPrimary: Color.fromARGB(255, 12, 87, 149),
                  primary: Color.fromARGB(255, 226, 226, 226)),
            ),
          ],
        ),
      ),
    ));
  }
}
