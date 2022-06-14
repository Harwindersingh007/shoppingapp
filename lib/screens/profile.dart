import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/utils/routes.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 249, 255),
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                // ignore: deprecated_member_use
                FontAwesomeIcons.search,
                color: Colors.grey,
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 238, 249, 255),
          leading: Icon(
            FontAwesomeIcons.bars,
            color: Colors.grey,
          )),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Sign In for the best\n       experience",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 87, 149),
                  fontWeight: FontWeight.bold,
                  fontSize: 34),
            ),
          )),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.authpage);
            },
            child: Text('Sign in'),
            style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                fixedSize: Size(380, 50),
                onPrimary: Color.fromARGB(255, 12, 87, 149),
                primary: Color.fromARGB(255, 247, 241, 241)),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.authpage);
            },
            child: Text('Create account'),
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
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/1.png"))),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Check order status and track ,\nchange or return",
                  style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        6,
                        78,
                        137,
                      ),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/2.png"))),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Check order status and track ,\nchange or return",
                  style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        6,
                        78,
                        137,
                      ),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/3.png"))),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Check order status and track ,\nchange or return",
                  style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        6,
                        78,
                        137,
                      ),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
