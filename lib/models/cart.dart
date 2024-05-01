 import 'package:flutter/material.dart';
import 'package:sneakerflutter/models/shoe.dart';

class Cart extends ChangeNotifier{
    //list of shoes for sale
   List<Shoe> shoeShop =[
     Shoe(name: 'Zoom FREAK', price: '236', imagePath: 'lib/images/zoomfreak.png', description: 'The forward-thinking design of his latest signature shoe'),
     Shoe(name: 'Air Jordan', price: '220', imagePath: 'lib/images/airjordan.png', description: 'Youve got the hops and the speed lace up in shoes that enhance'),
     Shoe(name: 'KD Treys', price: '250', imagePath: 'lib/images/kdtrey.png', description: 'A secure midfoot strap is suited for scoring binges and defensiv'),
     Shoe(name: 'Kyrie 6', price: '320', imagePath: 'lib/images/kyrie.png', description: 'Bouncy cushioning is paired with soft yet supportive for all'),
   ];
   
   //list of items in user cart
   List<Shoe> userCart = [];

   //get list of shoes for sale
   List <Shoe> getShoeList(){
     return shoeShop;
   }
   //get cart
   List<Shoe> getUserCart(){
     return userCart;
   }
   
   //add items to cart
  void addItemToCart(Shoe shoe){
     userCart.add(shoe);
     notifyListeners();
  }
   
   //remove item from cart
  void removeItemFromCart(Shoe shoe){
     userCart.remove(shoe);
     notifyListeners();
  }
   
 }