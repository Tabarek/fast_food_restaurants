import 'package:fast_food/core/services/rest-provier.dart';
import 'package:fast_food/view/screens/my-homepage.dart';
import 'package:fast_food/view/screens/rest_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/services/rest_detail_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ResProvider()),
        ChangeNotifierProvider.value(value: RestDetailsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          RestDetails.routeName: (context) => RestDetails(),
        },
      ),
    );
  }
}
