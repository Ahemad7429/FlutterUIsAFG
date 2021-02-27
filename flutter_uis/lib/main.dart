import 'package:flutter/material.dart';
import 'package:flutter_uis/apps/inspiration/screens/inspiration_screen.dart';
import 'package:flutter_uis/common/app_route.dart';
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
      // home: RootScreen(),
      routes: {
        '/': (_) => RootScreen(),
        AppRoute.inspirationScreen: (_) => InspirationScreen()
      },
    );
  }
}
