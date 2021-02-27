import 'package:flutter/material.dart';
import 'package:flutter_uis/common/app_button.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UIs from AFG'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          AppButton(
            title: 'Day 1: Inspiration App UI',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
