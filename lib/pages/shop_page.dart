import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffe.dart';
import 'package:coffee/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart (Coffe coffee){
  Provider.of<CoffeShop>(context,listen: false).addItemToCart(coffee);
 
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => ShopPage()),
      );
    });
  
  showDialog(
    context: context, 
    builder: (context) => 
    AlertDialog(
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            Container(
              width: 35,
              height: 35,
              margin: EdgeInsets.only(right: 10),
              child: Image.asset("images/check.png",fit: BoxFit.cover,)),
            Text("Succesfully add to cart",style: TextStyle(color: Colors.white,fontSize: 20),),
          ],
        ),
      )
    ],
       
      backgroundColor: Colors.green[400],
      
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
           Text("How would you like your coffee?",style: TextStyle(fontSize: 20),),
           SizedBox(height: 25,),
           Expanded(
            child: ListView.builder(
              itemCount: value.coffeeshop.length,
              itemBuilder: (context, index) {
                Coffe eachCoffee = value.coffeeshop[index];
    
                return CoffeeTile(
                  coffe: eachCoffee,
                  onPressed: () => addToCart(eachCoffee),
                  icon: Icon(Icons.add),
                  );
              },
              )
                      )
          ],
        ),
      ),
    )
      
      
      );
  }
}