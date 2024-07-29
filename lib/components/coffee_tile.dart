import 'package:coffee/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Widget icon;
   void Function()? onPressed;
  final Coffe coffe;
   CoffeeTile({super.key,required this.coffe,required this.onPressed,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(coffe.imagePath),
        trailing: IconButton(
          onPressed: onPressed,
         icon: icon,),
      ),
    );
  }
}