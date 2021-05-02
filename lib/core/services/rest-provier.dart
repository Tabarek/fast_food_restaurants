import 'package:fast_food/core/model/Rest-model.dart';
import 'package:fast_food/view/utility/colors.dart';
import 'package:flutter/material.dart';

class ResProvider with ChangeNotifier {
  List<RestModel> _resturants = [
    RestModel(
      id: '0',
      restName: 'Pizza Hut',
      restImg: 'assets/img/pizzaHut.png',
      logoImg: 'assets/img/PizzaHutlogo.png',
      restType: 'Burgur, American',
      restRate: '4.8',
      time: '10 - 15 Min',
      color: myYellow,
    ),
    RestModel(
      id: '1',
      restName: 'Starbucks',
      restImg: 'assets/img/starbucks.png',
      logoImg: 'assets/img/starbucksLogo.png',
      restType: 'Coffee, Beverages',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myDarkGreen,
    ),
    RestModel(
      id: '2',
      restName: 'Shake shack',
      restImg: 'assets/img/shakeshack.png',
      logoImg: 'assets/img/ShakeShacklogo.png',
      restType: 'Burgur, American',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myBlack,
    ),
    RestModel(
      id: '3',
      restName: 'Subway',
      restImg: 'assets/img/subway.png',
      logoImg: 'assets/img/subwaylogo.png',
      restType: 'Sandwich, Healthy',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myGreen,
    ),
    RestModel(
      id: '4',
      restName: 'MaCdonald\'s',
      restImg: 'assets/img/mcdonalds.png',
      logoImg: 'assets/img/mcdonaldslogo.png',
      restType: 'Burgur, American',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myRed,
    ),
    RestModel(
      id: '5',
      restName: 'Burger King',
      restImg: 'assets/img/burgerking.png',
      logoImg: 'assets/img/burgerkinglogo.png',
      restType: 'Burgur, American',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myBlue,
    ),
    RestModel(
      id: '6',
      restName: 'Costa Coffee',
      restImg: 'assets/img/costa.png',
      logoImg: 'assets/img/CostaLogo.png',
      restType: 'Burgur, American',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myDarkRed,
    ),
    RestModel(
      id: '7',
      restName: 'Hardees',
      restImg: 'assets/img/hardees.png',
      logoImg: 'assets/img/hardeeslogo.png',
      restType: 'Burgur, American',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myBlack,
    ),
    RestModel(
      id: '8',
      restName: 'Dominos Pizza',
      restImg: 'assets/img/dominospizza.png',
      logoImg: 'assets/img/Dominospizzalogo.png',
      restType: 'Burgur, American',
      restRate: '4.8',
      time: '10 -15 Min',
      color: myDarkBlue,
    ),
  ];
  List<RestModel> get rest {
    return [..._resturants];
  }
}
