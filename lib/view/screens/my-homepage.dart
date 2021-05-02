import 'package:carousel_slider/carousel_slider.dart';
import 'package:fast_food/core/services/rest-provier.dart';
import 'package:fast_food/view/utility/colors.dart';
import 'package:fast_food/view/widgets/rest-item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final List<Color> colors = [
    myYellow,
    myDarkGreen,
    myBlack,
    myGreen,
    myRed,
    myBlue,
    myDarkRed,
    myBlack,
    myDarkBlue
  ];
  @override
  Widget build(BuildContext context) {
           var rest = Provider.of<ResProvider>(context).rest;

    return Scaffold(
        body: AnimatedContainer(
      height: double.infinity,
      duration: Duration(microseconds: 100),
      curve: Curves.easeInOutBack,
      color: colors[_index],
      child:CarouselSlider.builder(
      height: double.infinity,
      itemCount: rest.length,
      enlargeCenterPage: true,
      onPageChanged: (i) {
        setState(() {
          _index = i;
        });
      },
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return RestItem(
          logoImg: rest[index].logoImg,
          restName: rest[index].restName,
          restImg: rest[index].restImg,
          restType: rest[index].restType,
          restRate: rest[index].restRate,
          color: rest[index].color,
          time: rest[index].time,
        );
      },
    )
    ));
  }
}
