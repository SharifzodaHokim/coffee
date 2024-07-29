import 'package:coffee/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeShop  extends ChangeNotifier{
  final List<Coffe> _shop = [
    Coffe(
      name: "Americano" ,
     price: "34tjk", 
    imagePath: "images/coffee-cup.png"),
     Coffe(
      name: "Capuchino" ,
     price: "23tjk", 
    imagePath: "images/coffee.png"),
     Coffe(
      name: "Late" ,
     price: "26tjk", 
    imagePath: "images/coffee-cup.png"),
     Coffe(
      name: "Meksicano" ,
     price: "75tjk", 
    imagePath: "images/coffee.png"),
  ];
  List <Coffe> _userCart = [];

  List <Coffe> get coffeeshop => _shop;

  List<Coffe> get userCart => _userCart;

  void addItemToCart(Coffe coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  void removeItemFromCart(Coffe coffee){
 _userCart.remove(coffee);
 notifyListeners();
  }
}