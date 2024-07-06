import 'package:flutter/material.dart';

import 'my_money.dart';

class mainMyMoney extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme:ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: HSLColor.fromColor(Colors.grey).withLightness(0.18).toColor()),),
      home: My_Money(),);
  }
}