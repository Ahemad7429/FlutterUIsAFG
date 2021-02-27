import 'package:flutter/material.dart';
import 'package:flutter_uis/common/widgets/app_button.dart';
import 'package:flutter_uis/common/helper/app_route.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UIs from AFG'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          AppButton(
            title: 'Day 1: Inspiration App UI',
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.inspirationScreen);
            },
          ),
          AppButton(
            title: 'Day 2: Trip App UI',
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.tripScreen);
            },
          ),
          AppButton(
            title: 'Day 3: Food Delivery App UI',
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.foodDeliveryScreen);
            },
          ),
          AppButton(
            title: 'Day 4: Actor Profile App UI',
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.actorProfileScreen);
            },
          )
        ],
      ),
    );
  }
}
