import 'package:flutter/material.dart';
import 'pages/router.dart';
import 'services/auth.dart';
import 'customcolors/custom-colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  CustomColors customColors = new CustomColors();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reaudi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customColors.primarySwatch,
        primaryColor: customColors.primaryColor,
      ),
      home: RouterPage(
        auth: new Auth(),
      ),
    );
  }
}
