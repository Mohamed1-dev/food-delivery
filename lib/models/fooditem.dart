import 'package:flutter/material.dart';

FoodItemList foodItemList = FoodItemList(foodItems: [
  FoodItem(
      id: 1,
      title: "Beach BBQ Burger",
      hotel: "Las vega Hotel",
      price: 14.69,
      imageUrl:
          "https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__340.jpg"),
  FoodItem(
      id: 2,
      title: "Beach BBQ Burger",
      hotel: "Las vega Hotel",
      price: 22.69,
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/02/05/21/06/burger-2041192__340.jpg"),
  FoodItem(
      id: 3,
      title: "Beach BBQ Burger",
      hotel: "Las vega Hotel",
      price: 56.69,
      imageUrl:
          "https://cdn.pixabay.com/photo/2016/11/21/13/04/beef-1845296__340.jpg"),
  FoodItem(
      id: 4,
      title: "Beach BBQ Burger",
      hotel: "Las vega Hotel",
      price: 86.69,
      imageUrl:
          "https://cdn.pixabay.com/photo/2014/11/11/20/47/hamburger-527393__340.jpg"),
]);

class FoodItemList {
  List<FoodItem> foodItems;

  FoodItemList({@required this.foodItems});
}

class FoodItem {
  int id;
  String title;
  String hotel;
  double price;
  String imageUrl;
  int quantity;

  FoodItem(
      {@required this.id,
      @required this.title,
      @required this.hotel,
      @required this.price,
      @required this.imageUrl,
      this.quantity = 1});

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}
