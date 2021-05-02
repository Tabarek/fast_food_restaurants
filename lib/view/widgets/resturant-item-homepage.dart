import 'package:fast_food/core/arguments/rest-details-arg.dart';
import 'package:fast_food/view/screens/rest_details.dart';
import 'package:fast_food/view/utility/colors.dart';
import 'package:flutter/material.dart';

class ResturantListView extends StatelessWidget {
  final String restImg;
  final String restName;
  final String restRate;
  final String restType;
  final String time;
  final Color color;

  ResturantListView(
      {@required this.restImg,
      @required this.restName,
      @required this.restRate,
      @required this.restType,
      @required this.time,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              child: Image.asset(restImg),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              margin: EdgeInsets.symmetric(vertical: 25),
              height: MediaQuery.of(context).size.width / 1.6,
              width: MediaQuery.of(context).size.width / 1.6,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(18)),
            ),
            // Column(
            //   children: <Widget>[
            Text(
              restName,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.orange),
                    Text(restRate),
                  ],
                ),
                Text(restType),
                Text('\$\$\$'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                time,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: lightBlue, borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 6,
            ),
            RaisedButton(
              child: Text(
                'Order from here',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600, color: myWhite),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RestDetails.routeName,
                    arguments: RestDetailsArg(
                        restImg: restImg,
                        color: color,
                        restName: restName,
                        restRate: restRate,
                        restType: restType,
                        time: time));
              },
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              color: myBlack,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(50)),
            )
          ],
          //   )
          // ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height / 1.2, //double.infinity,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
          color: myWhite,
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
