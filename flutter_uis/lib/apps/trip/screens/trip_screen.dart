import 'package:flutter/material.dart';
import 'package:flutter_uis/apps/trip/screens/home_screen.dart';

class TripScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: const HomeScreen(),
    );
  }
}
