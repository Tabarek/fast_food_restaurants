import 'package:fast_food/view/utility/colors.dart';
import 'package:flutter/material.dart';

class LogoHomePage extends StatelessWidget {
  final String logoImg;

  LogoHomePage({this.logoImg});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "ASAP ",
                  style: TextStyle(color: myWhite, fontSize: 18),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: myWhite,
                ),
                Text(
                  " Work",
                  style: TextStyle(color: myWhite, fontSize: 18),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: myWhite)),
            padding: EdgeInsets.all(8),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.6,
            height:  MediaQuery.of(context).size.width / 4,
            child:Image.asset(logoImg)
          ),
           SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
