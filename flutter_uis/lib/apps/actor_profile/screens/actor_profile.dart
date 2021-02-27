import 'package:flutter/material.dart';
import 'package:flutter_uis/apps/actor_profile/screens/home_screen.dart';

class ActorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}
