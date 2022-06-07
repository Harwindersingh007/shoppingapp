import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/screens/cartpage.dart';
import 'package:shopping_app/screens/homepage.dart';
import 'package:shopping_app/screens/morepage.dart';
import 'package:shopping_app/screens/profile.dart';
import 'package:shopping_app/utils/routes.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  int currentIndex = 0;
  final screens = const [
    HomePage(),
    MyProfile(),
    MyCart(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(children: screens, index: currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            iconSize: 20,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(

                  // ignore: deprecated_member_use
                  icon: Icon(FontAwesomeIcons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  // ignore: deprecated_member_use
                  icon: Icon(FontAwesomeIcons.user),
                  label: 'MyNetwork'),
              BottomNavigationBarItem(
                  // ignore: deprecated_member_use
                  icon: Icon(FontAwesomeIcons.shoppingCart),
                  label: 'Notifications'),
              BottomNavigationBarItem(

                  // ignore: deprecated_member_use
                  icon: Icon(Icons.menu),
                  label: 'Home'),
            ]),
      ),
      initialRoute: MyRoutes.mainroute,
      routes: {
        MyRoutes.homeroute: ((context) => const HomePage()),
        MyRoutes.cartroute: ((context) => const MyCart()),
        MyRoutes.profileroute: ((context) => const MyProfile()),
        MyRoutes.menuroute: ((context) => const MenuPage()),
      },
    );
  }
}
