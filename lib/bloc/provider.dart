
import 'package:food_delivery/models/fooditem.dart';

class CartProvider{
  List<FoodItem> foodItems = [];

  List<FoodItem> addToList(FoodItem foodItem){
    bool isPresent = false;
     if(foodItems.length > 0){
       for (int i = 0; i < foodItems.length; i++) {
         if(foodItems[i].id == foodItem.id){
           increaseITemQuantity(foodItem);
           isPresent = true;
           break;
         }else{
           isPresent = false;
         }
       }
       if(!isPresent){
         foodItems.add(foodItem);
       }
     }else{
       foodItems.add(foodItem);
     }
    return foodItems;

  }

  void increaseITemQuantity(FoodItem foodItem) => foodItem.incrementQuantity();
  void decrementItemQuantity(FoodItem foodItem) => foodItem.decrementQuantity();

  List<FoodItem> removeFromList(FoodItem foodItem){
    foodItems.remove(foodItem);
    return foodItems;
  }
}