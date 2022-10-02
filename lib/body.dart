import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:freebie_app/home_screen.dart';
import 'package:freebie_app/boxes.dart';
import 'package:freebie_app/channels.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 7, 7, 1),
      body: PersistentTabView(
        context,
        screens: _screens(),
        items: _items(),
        resizeToAvoidBottomInset: true,
        navBarHeight: 75,
        navBarStyle: NavBarStyle.style12,
        backgroundColor: Color.fromRGBO(7, 7, 7, 1),
      ),
    );
  }

  List<Widget> _screens() {
    return [HomeScreen(), Boxes(), Channels()];
  }

  List<PersistentBottomNavBarItem> _items() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          title: 'Home',
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Color.fromRGBO(37, 37, 37, 1)),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.card_giftcard),
          title: 'Boxes',
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Color.fromRGBO(37, 37, 37, 1)),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.telegram),
          title: 'Channels',
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Color.fromRGBO(37, 37, 37, 1))
    ];
  }
}
