import 'package:flutter/material.dart';
import 'package:flutter_uis/apps/actor_profile/screens/actor_profile.dart';
import 'package:flutter_uis/apps/food_delivery/screens/food_delivery_screen.dart';
import 'package:flutter_uis/apps/inspiration/screens/inspiration_screen.dart';
import 'package:flutter_uis/apps/trip/screens/trip_screen.dart';
import 'package:flutter_uis/common/helper/app_route.dart';
import 'package:flutter_uis/common/root_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter AFG UIs Demo',
      routes: {
        '/': (_) => RootScreen(),
        AppRoute.inspirationScreen: (_) => InspirationScreen(),
        AppRoute.tripScreen: (_) => TripScreen(),
        AppRoute.foodDeliveryScreen: (_) => FoodDeliveryScreen(),
        AppRoute.actorProfileScreen: (_) => ActorProfileScreen(),
      },
    );
  }
}
