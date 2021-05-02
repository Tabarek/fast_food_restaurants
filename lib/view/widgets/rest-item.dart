import 'package:fast_food/core/services/rest-provier.dart';
import 'package:fast_food/view/widgets/logo-part-homepage.dart';
import 'package:fast_food/view/widgets/resturant-item-homepage.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:provider/provider.dart';

class RestItem extends StatelessWidget {
  final String id;
  final String logoImg;
  final String restImg;
  final String restName;
  final String restRate;
  final String restType;
  final String time;
  final Color color;
  RestItem({
    this.id,
    @required this.logoImg,
    @required this.restImg,
    @required this.restName,
    @required this.restRate,
    @required this.restType,
    @required this.time,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        LogoHomePage(
          logoImg: logoImg,
        ),
        ResturantListView(
          color: color,
          restImg: restImg,
          restName: restName,
          restRate: restRate,
          restType: restType,
          time: time,
        )
      ],
    );
  }
}
