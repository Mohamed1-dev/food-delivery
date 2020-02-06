import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_delivery/bloc/provider.dart';
import '../models/fooditem.dart';
import 'package:rxdart/subjects.dart';

class CartListBloc extends BlocBase {

CartListBloc();
  // final cartItemController = StreamController();
  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);

  final CartProvider provider = CartProvider();

  Stream get getList => _listController.stream;
// output
  Stream<List<FoodItem>> get listStream => _listController.stream;

// input
  Sink<List<FoodItem>> get listSink => _listController.sink;

// Business Logic

   addToList(FoodItem foodItem) {
    // provider.addToList(foodItem);
    listSink.add(provider.addToList(foodItem));
  }

   removeFromList(FoodItem foodItem) {
        // provider.removeFromList(foodItem);
    listSink.add(provider.removeFromList(foodItem));
  }

// dispose  to close stream
  @override
  void dispose() {
    _listController.close();
    super.dispose();
  }  
}
