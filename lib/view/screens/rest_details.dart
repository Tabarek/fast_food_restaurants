import 'package:fast_food/core/arguments/rest-details-arg.dart';
import 'package:fast_food/core/services/rest_detail_provider.dart';
import 'package:fast_food/view/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RestDetails extends StatelessWidget {
  static const routeName = '/extractArguments';

  final String restImage;
  final Color color;
  RestDetails({this.restImage, this.color});
  @override
  Widget build(BuildContext context) {
    final RestDetailsArg args = ModalRoute.of(context).settings.arguments;
    print('image = ${args.restImg}');
    print('color = ${args.color}');
    var _meals = Provider.of<RestDetailsProvider>(context, listen: false).meals;
    return Scaffold(
        body: Stack(children: <Widget>[
      CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            expandedHeight: 250,
            backgroundColor: args.color,
            flexibleSpace: new FlexibleSpaceBar(
                title: SizedBox(
                    width: 180, height: 180, child: Image.asset(args.restImg))),
          ),
          SliverFixedExtentList(
            itemExtent: 1,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
//                  margin: EdgeInsets.only(top: 270),
//                  padding: EdgeInsets.only(top: 10),
                  height: 300,
//                  width: double.infinity,
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(30),
//                      color: myDarkBlue),
                  child: Column(
                    children: <Widget>[
                      Text(
                        args.restName,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
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
                              Text(args.restRate),
                            ],
                          ),
                          Text(args.restType),
                          Text('\$\$\$'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          args.time,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: lightBlue,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _meals.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(_meals[index].img),
                                      ),
                                    ),
                                  ),
                                  Text(_meals[index].meal),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  //);
//                  },
//                ),
//              ),
//            ],
//          ),
//          Container(
//            margin: EdgeInsets.only(top: 270),
//            padding: EdgeInsets.only(top: 10),
//            height: 700,
//            width: double.infinity,
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(30), color: myWhite),
//            child: Column(
//              children: <Widget>[
//                Text(
//                  args.restName,
//                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
//                ),
//                SizedBox(
//                  height: 10,
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Row(
//                      children: <Widget>[
//                        Icon(Icons.star, color: Colors.orange),
//                        Text(args.restRate),
//                      ],
//                    ),
//                    Text(args.restType),
//                    Text('\$\$\$'),
//                  ],
//                ),
//                SizedBox(
//                  height: 15,
//                ),
//                Container(
//                  child: Text(
//                    args.time,
//                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                  ),
//                  padding: EdgeInsets.all(10),
//                  decoration: BoxDecoration(
//                      color: lightBlue,
//                      borderRadius: BorderRadius.circular(20)),
//                ),
//                SizedBox(
//                  height: 200,
//                  width: double.infinity,
//                  child: ListView.builder(
//                    scrollDirection: Axis.horizontal,
//                    itemCount: _meals.length,
//                    itemBuilder: (context, index) {
//                      return Padding(
//                        padding: EdgeInsets.all(10),
//                        child: Column(
//                          children: <Widget>[
//                            SizedBox(
//                              height: 100,
//                              width: 100,
//                              child: ClipRRect(
//                                borderRadius: BorderRadius.circular(20.0),
//                                child: Image(
//                                  fit: BoxFit.cover,
//                                  image: AssetImage(_meals[index].img),
//                                ),
//                              ),
//                            ),
//                            Text(_meals[index].meal),
//                          ],
//                        ),
                );
              },
            ),
//                )
//              ],
//            ),
          ),
        ],
//        height: double.infinity,
//        width: double.infinity,
        //child:
      ),
    ]));
  }
}
