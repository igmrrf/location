import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Numbers',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: AppBarTextStyle),
          ),
          textTheme: TextTheme(
            title: TitleTextStyle,
            body1: Body1TextStyle,
          )),
      home: LocationDetail(),
    );
  }
}
