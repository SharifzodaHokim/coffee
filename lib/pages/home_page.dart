import 'package:coffee/components/googl_nav_bar.dart';
import 'package:coffee/pages/cart_page.dart';
import 'package:coffee/pages/const.dart';
import 'package:coffee/pages/shop_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    ShopPage(),
     CartPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundColor,
      bottomNavigationBar: GooglNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      

    );
  }
}