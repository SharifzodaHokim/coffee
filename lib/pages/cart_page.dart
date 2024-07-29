import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffe.dart';
import 'package:coffee/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffe coffee){
    Provider.of<CoffeShop>(context,listen: false).removeItemFromCart(coffee);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder:  (context, value, child) =>  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
         Text("Your Cart",style: TextStyle(fontSize: 20),),
         SizedBox(height: 25,),
         Expanded(
          child: ListView.builder(
            itemCount: value.userCart.length,
            itemBuilder: (context, index) {
              Coffe eachCoffee  = value.userCart[index];
              return CoffeeTile(
                coffe: eachCoffee, 
                onPressed: () => removeFromCart(eachCoffee), 
                icon: Icon(Icons.delete));
            },
            )
         )
          ],
        ),
      ),
    ),
      );
  }
}