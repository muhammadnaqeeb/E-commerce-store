import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationAndAppbar extends StatefulWidget {
  const NavigationAndAppbar({super.key});

  @override
  State<NavigationAndAppbar> createState() => _NavigationAndAppbarState();
}

class _NavigationAndAppbarState extends State<NavigationAndAppbar> {
  int c_index = 0;
  final screens = [
    HomeScreen(),
    const Center(child: Text("Feeddd")),
    CartScreen(),
    const Center(child: Text("profileee"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            "E-store app",
            style: TextStyle(color: Colors.black),
          ),
        ),
        // leading: const Padding(
        //   padding: EdgeInsets.only(left: 20),
        //   child: Image(
        //     image: AssetImage(
        //       "assets/images/avatar.png",
        //     ),
        //   ),
        // ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(
              Icons.notifications_rounded,
              size: 26,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        selectedLabelStyle: TextStyle(fontSize: 12),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: c_index,
        onTap: ((value) {
          setState(() {
            c_index = value;
          });
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(10.0),
                child: FaIcon(
                  FontAwesomeIcons.home,
                  size: 20,
                ),
              ),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(10.0),
              child: FaIcon(
                FontAwesomeIcons.trophy,
                size: 20,
              ),
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(10.0),
              child: FaIcon(
                FontAwesomeIcons.basketShopping,
                size: 20,
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.person_rounded,
                size: 27,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: IndexedStack(
        index: c_index,
        children: screens,
      ),
    );
  }
}
