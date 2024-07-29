import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GooglNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
   GooglNavBar({super.key,required this.onTabChange});

  @override
  State<GooglNavBar> createState() => _GooglNavBarState();
}

class _GooglNavBarState extends State<GooglNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange:  (value) => widget.onTabChange!(value) ,
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(
            icon:Icons.home,
            text: "Home", 
          ),
          
          GButton(
            icon:Icons.shopping_bag_outlined,
            text: "Cart", 
          )
        ]
      ),
    );
  }
}