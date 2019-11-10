import 'package:flutter/material.dart';
import 'package:reaudi/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Map<int, Color> primaryColorMap = {
    50: Color.fromRGBO(255, 63, 135, .1),
    100: Color.fromRGBO(255, 63, 135, .2),
    200: Color.fromRGBO(255, 63, 135, .3),
    300: Color.fromRGBO(255, 63, 135, .4),
    400: Color.fromRGBO(255, 63, 135, .5),
    500: Color.fromRGBO(255, 63, 135, .6),
    600: Color.fromRGBO(255, 63, 135, .7),
    700: Color.fromRGBO(255, 63, 135, .8),
    800: Color.fromRGBO(255, 63, 135, .9),
    900: Color.fromRGBO(255, 63, 135, 1),
  };

  Map<int, Color> primarySwatchMap = {
    50: Color.fromRGBO(67, 4, 117, .1),
    100: Color.fromRGBO(67, 4, 117, .2),
    200: Color.fromRGBO(67, 4, 117, .3),
    300: Color.fromRGBO(67, 4, 117, .4),
    400: Color.fromRGBO(67, 4, 117, .5),
    500: Color.fromRGBO(67, 4, 117, .6),
    600: Color.fromRGBO(67, 4, 117, .7),
    700: Color.fromRGBO(67, 4, 117, .8),
    800: Color.fromRGBO(67, 4, 117, .9),
    900: Color.fromRGBO(67, 4, 117, 1),
  };

  Map<int, Color> whiteMap = {
    50: Color.fromRGBO(242, 242, 242, .1),
    100: Color.fromRGBO(242, 242, 242, .2),
    200: Color.fromRGBO(242, 242, 242, .3),
    300: Color.fromRGBO(242, 242, 242, .4),
    400: Color.fromRGBO(242, 242, 242, .5),
    500: Color.fromRGBO(242, 242, 242, .6),
    600: Color.fromRGBO(242, 242, 242, .7),
    700: Color.fromRGBO(242, 242, 242, .8),
    800: Color.fromRGBO(242, 242, 242, .9),
    900: Color.fromRGBO(242, 242, 242, 1),
  };

  Map<int, Color> grayMap = {
    50: Color.fromRGBO(115, 115, 115, .1),
    100: Color.fromRGBO(115, 115, 115, .2),
    200: Color.fromRGBO(115, 115, 115, .3),
    300: Color.fromRGBO(115, 115, 115, .4),
    400: Color.fromRGBO(115, 115, 115, .5),
    500: Color.fromRGBO(115, 115, 115, .6),
    600: Color.fromRGBO(115, 115, 115, .7),
    700: Color.fromRGBO(115, 115, 115, .8),
    800: Color.fromRGBO(115, 115, 115, .9),
    900: Color.fromRGBO(115, 115, 115, 1),
  };

  Map<int, Color> blackMap = {
    50: Color.fromRGBO(13, 13, 13, .1),
    100: Color.fromRGBO(13, 13, 13, .2),
    200: Color.fromRGBO(13, 13, 13, .3),
    300: Color.fromRGBO(13, 13, 13, .4),
    400: Color.fromRGBO(13, 13, 13, .5),
    500: Color.fromRGBO(13, 13, 13, .6),
    600: Color.fromRGBO(13, 13, 13, .7),
    700: Color.fromRGBO(13, 13, 13, .8),
    800: Color.fromRGBO(13, 13, 13, .9),
    900: Color.fromRGBO(13, 13, 13, 1),
  };

  MaterialColor primaryColor() {
    return MaterialColor(0xFFFF3F87, primaryColorMap);
  }

  MaterialColor primarySwatch() {
    return MaterialColor(0xFF430475, primarySwatchMap);
  }

  MaterialColor white() {
    return MaterialColor(0xFFF2F2F2, whiteMap);
  }

  MaterialColor black() {
    return MaterialColor(0xFF0D0D0D, blackMap);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reaudi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primarySwatch(),
        primaryColor: primaryColor(),
      ),
      home: RouterPage(),
    );
  }
}