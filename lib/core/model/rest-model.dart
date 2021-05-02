import 'package:flutter/material.dart';

class RestModel {
  final String id;
  final String restImg;
  final String restName;
  final String restRate;
  final String restType;
  final String time;
  final Color color;
  final String logoImg;

  RestModel({
    @required this.id,
    @required this.restImg,
    @required this.restName,
    @required this.restRate,
    @required this.restType,
    @required this.time,
    @required this.color,
    @required this.logoImg,
  });
}
