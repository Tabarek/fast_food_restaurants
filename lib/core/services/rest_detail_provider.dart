import 'package:fast_food/core/model/res_details-model.dart';
import 'package:flutter/cupertino.dart';

class RestDetailsProvider with ChangeNotifier {
  List<RestDetailModel> _meals = [
    RestDetailModel(img: 'assets/img/breakfast.png', meal: 'Breakfast'),
    RestDetailModel(img: 'assets/img/burger.jpg', meal: 'Burger'),
    RestDetailModel(img: 'assets/img/valueMeal.jpeg', meal: 'Value Meal'),
    RestDetailModel(img: 'assets/img/snaks.png', meal: 'Snaks'),
    RestDetailModel(img: 'assets/img/desserts.png', meal: 'Desserts'),
    RestDetailModel(img: 'assets/img/salad.png', meal: 'Salad'),
  ];

  List<RestDetailModel> get meals => [..._meals];
}
