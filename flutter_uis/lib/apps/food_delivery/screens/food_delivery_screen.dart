import 'package:flutter/material.dart';
import 'package:flutter_uis/apps/food_delivery/screens/starter_screen.dart';

class FoodDeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: StarterScreen(),
    );
  }
}
