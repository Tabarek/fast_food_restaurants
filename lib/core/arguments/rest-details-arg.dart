import 'package:flutter/cupertino.dart';

class RestDetailsArg {
  final String restImg;
  final String restName;
  final String restRate;
  final String restType;
  final String price;
  final String time;
  final Color color;

  RestDetailsArg(
      {this.restImg,
      this.restName,
      this.restRate,
      this.restType,
      this.time,
      this.price,
      this.color});
}
